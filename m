Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE08B364
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 09:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644745820;
	h=To:Subject:From:Message-Id:Date;
	bh=+74EPfsVRTfMv1sThheQDcPZvGuD2gMTlSPZ2ohqjEA=;
	b=OY3suRCTnuuCgg7sx6jx69Sw4LrFtzWv2AMyFRkxw9Mq3LIWUWhtFtYYoacUKE72
	jATQaP2oz7VHBpLqCqF+JaMIY+fCNeDFEO69CrlrLH6HPvtm6d1VJMcEhY8a2N9gbmN
	3AAjo2yBIKnxFvizlO9KSgAdxhsOgK+SGJosGE+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644745820;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+74EPfsVRTfMv1sThheQDcPZvGuD2gMTlSPZ2ohqjEA=;
	b=djJYYus3A1YFJx/kr8ff0nFYI28Q/fNxf46R/FCE/RMubdLo8V1uEMM0sAeevNBX
	GOtbXtjMIW//8f4PMTbZDb49N2OEikADIHMd3wY0dqk3PjWWA2Uy6dv7Xs2nuU+NuUs
	0CLXtbDi1dhoUoR7U0bQMwYN1H+y9r9FZZF71n+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef27d8794-a1f39ce7-28ba-48e6-9e80-62950699ba78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d467073f4c724c88b4bd716e4d23365fa8e6c2bf4858811cf58dc9fc423ee8f
Date: Sun, 13 Feb 2022 09:50:20 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644745819
