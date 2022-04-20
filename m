Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5B27A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 05:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650434398;
	h=To:Subject:From:Message-Id:Date;
	bh=33ynVoBfRww/dM5ATdIgkzX1s9cNGeJoaiNg19qG9CQ=;
	b=UBf+/FK2hBLgQQ7/8eF3r8R1AEB9yW4tnbMKThYpL/zg/qu75UBCihIQ82sk+QU4
	muz+NyWCnSgN3zXXGv4Epn+St19gHoIwYEqZReCKA0fIsffMOOHDldLJg8Lf//jK0/F
	p69zk1o1T2j5gD9vczVH0VzGlM5L8+O4EFItjFHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650434398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=33ynVoBfRww/dM5ATdIgkzX1s9cNGeJoaiNg19qG9CQ=;
	b=KuBdDv5i2H7E3OPHC1SiGhG3UzHuuS5/7bt/FM0Mnm//wE6ycuwJeVnvpWsk5Ymq
	QlCIDFuOea0F/fpblkMclKx+ns3DqVAdF75e6Xi2sVuxmEGk/DECiIp4SAu8WpkFliC
	TIXZydL7j5lzbc74gIoDjJgqPyRS3V29rMMgISIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180458e5822-ceab006a-108f-4b00-9f98-9fbc3660b92f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bd3cb23139a044a9fd399f09427bf518adda2a419bf8f5437be67da6b07bdb5
Date: Wed, 20 Apr 2022 05:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650434398
