Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B179A4C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 20:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648760338;
	h=To:Subject:From:Message-Id:Date;
	bh=GoivQDcnnjII85CsSCgWOzGNY55slw+OXaRksWLYYn4=;
	b=i5TzMX2H/RUZuMXBy7uveuFYoSX7sW+QbXrJ3SZyJOjwAVA7ID5SlHXIXaGd4GnX
	hqiByE+4pfASdUsgfqUy5kpuFLNP3PT5goZ5ez2/iqqJeohL+KF/KJvm7uWtdLGav64
	XL03Ns4eGL+t0HTovwr/9WzOtB4jSua6ceOxGinw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648760338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GoivQDcnnjII85CsSCgWOzGNY55slw+OXaRksWLYYn4=;
	b=LDxeayWa9pQN+mMOLNz4WUjFC1lkw6xdhW2Xa5ZSk+jCAQf0bKNppAk5P4gdqIQw
	rg6xFgHUq0VfrYn6BuVggAmVW5qWmQLOvlRy+ZYKrWiF9ptd4RNgkFPTlFsY56oY6kn
	T9TYCij6RlkbCztyYbd/55ROvCDW3syCFdxCCLN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe1c63754-0b7a55f9-493f-485c-b68b-2e6fc47e6601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0000ea44052c9126110412fc1c3f23c6270b4b3fa13991b94dc64fcded708585
Date: Thu, 31 Mar 2022 20:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648760338
