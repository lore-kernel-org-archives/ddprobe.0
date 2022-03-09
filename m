Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9974448C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646846184;
	h=To:Subject:From:Message-Id:Date;
	bh=iklrrBaiqmdAi68A/9haxT+xuXDV6kOBcZaX8oPQC4E=;
	b=ZvzNpMEe26zWFJ6FpUlWzWhbpi7ygykz3zQvKkweU3qcaEfDQeoMdIRt3e4Gu9bJ
	uH8PwQCD9XdzTjyNTemZQMXgugQRsXSNnjk8q3pNC/yGYqAG3a8yZEIq60zty7FASz0
	k/ocTEJ1O/8V8gm9wfluWJ4UwtifyJShI3WfIFWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646846184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iklrrBaiqmdAi68A/9haxT+xuXDV6kOBcZaX8oPQC4E=;
	b=VkjqcGuPZQ++2uVjhRGcSZcOb761hv+vL7q4C32h/DnEv1LWdOtryCZzDiGbc7WK
	BUhzUCwRT+RmkGu6j8Y7XH0SL1t+7KPnAHW1vo0DD0SWMChoxXhEED+8lCOgc9VdjAM
	l4PtpSFUQuFpWpVAdmt9EK1OyiLbdu9p6JTi/GVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6fae8d82-e84dc3ce-5df5-446c-87b7-f66a0761cfe6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3ff44bbab90bd0a3bb20bde90c0991738755a2bc4612467c5e92fa8e9af50a3
Date: Wed, 9 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646846184
