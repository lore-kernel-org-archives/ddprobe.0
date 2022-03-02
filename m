Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B506829A8
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646215585;
	h=To:Subject:From:Message-Id:Date;
	bh=eszQmqDPi1asf11k2MUENd3gemFkLTw1wciMpvv2adw=;
	b=CxnlZEiplQlOX99x7t/S8DUF4gFdmw34leW+144UsW7WVwy5HvCJ/hJijjVC7Gf9
	pKMIy0Jt/oaVQy5kDd4iA4XHIxvoRNRMuA3UHJpdLsex/3wBrSuTPy6WZqYoS1EXMth
	VzDUeyk4lMbZL81cZT8Y3pWXge2nCp2Fu3cNwxos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646215585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eszQmqDPi1asf11k2MUENd3gemFkLTw1wciMpvv2adw=;
	b=Qri17poSvmHl0XWWzH4gVgqxbJfZSzD3gCgJWxRqeY+MwECB3oyQZ9+i5kDlghul
	GFkrWjazfTeGHZFnGSVDz1uNs9WU2IT/f3UW0dZRzyGHqHXlzFWeUrUjmUyDC4EFuuF
	qmKi/u8k2PoSi4RH3ztuzyA0kFYVAowUfcNG9zuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a185c15-0df0796b-ad3a-421a-8429-d33c9907ebe1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d76dc8e8f3b8248624e5139569ec67fda7770308b33e8636e2f09dae7013c1d3
Date: Wed, 2 Mar 2022 10:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646215584
