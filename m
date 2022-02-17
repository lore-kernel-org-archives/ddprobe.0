Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FBC1FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645135284;
	h=To:Subject:From:Message-Id:Date;
	bh=Rz5/yQWAY8xdWmFa/G12O1AVDYSUU3EjZZjhCDcnHn0=;
	b=e7zVVO1teRGXxwAuY2cVvTAA1Wy3ZWztE3e2S/Cml7mcX61eB41XvBuoIWgpfJxB
	/OgtjeZ9j2hSR3V2Djl2O1oDx0NuTxYxaILh0JlbAAQRgC9llRpw6QKCAizxuMgB9Mf
	OTA98IJvZjwbqlwrvZy1L8BwbXsa361969Xkk27k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645135284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rz5/yQWAY8xdWmFa/G12O1AVDYSUU3EjZZjhCDcnHn0=;
	b=HLgEyOEZi81mLNg/u4ufxceCuDBMLNMqrMDn9r94+p05SD1+BQgIcCsYO3ygzrKu
	9Vxur5Ur+sPzJoQL0Y2qyETjJQDEMT/oge/UV67Mdq1wU9Mht2ny86RZVSPYvFKmNer
	D4ldkMyr6rjzpQdI0z4bSxfpbVVowKyaoGB6f8mM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f09b44a27-9490b5c1-0523-4dbe-b229-738ae93022f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92543be73e85d11deeeae24f23828d38c36bbe5811dc3e6bcb8a42d3b4761f1f
Date: Thu, 17 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645135284
