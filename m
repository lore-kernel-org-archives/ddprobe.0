Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F352F18D
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 01:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649208658;
	h=To:Subject:From:Message-Id:Date;
	bh=dkISp1WPCoIWCH3//oLDzFx7ZLBToFv2u+24uNlHmNU=;
	b=J5aCrBFOxXiQ74YWiGaSztojImYsf9E8khTmfH0xx51UMlt4u/rBUgR6eAuj+qKf
	GVgVzLIIiXWdZfoe2kNXvua9pOY2kATqnCGi6XX4CGROvjkCH6meUAPyk6j3pwioXFQ
	StX8nBoKbEDzIok8fyilIVWk+y3IeW9LAqcTb4u8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649208658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dkISp1WPCoIWCH3//oLDzFx7ZLBToFv2u+24uNlHmNU=;
	b=cu+mw8jge77pmrYwD6G28Y/FFE/65ehUfdPC511wZJd3KFp/jimfVR1tQG9RR1kQ
	NFy3/xote1TWjNgPlgMTifbKYq8O7FaZoNRxbNRjp4J/YoTGCU/tXPy66/DNqtbLRW2
	mF/etY9Rtcw+q76B6MZSISEaQeuHVZQ/hZfKCvvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc7f094e-c8ca359b-f29d-4432-8468-4659d27db699-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfb05cacd6de4f6a60ce669f0098bef0630f0b70946e409414a079892c2b1fb6
Date: Wed, 6 Apr 2022 01:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649208658
