Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A5FDDAA
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 22:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0895EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 22:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683583806;
	bh=gXOJpRwTEXYHoj1vt/NBE2axYSCZmiHe1uGjmO6qjow=;
	h=To:Subject:From:Date:From;
	b=t0fOtst7f1rKdmQq4OdKtbppCDfM+QiMqeiLPJOmewHcqFo3/0fjxhmWglkYg5JBG
	 UJ0e60E7uFEEHyWYvEO1YCLRBDM6RSLjXMs409OFCUjy87ZfopDgNMruAPmeqdGIZN
	 KfmCH609pN+P310FTfm1m9g7CMZOJHDGJNSZ4SlPvpgVsh7nHPfKCuq1Fzry2vTO4j
	 UDeE6cbc5URjRI7jdFXR8yeyk8r4gatT9+KYhXf7Oqhda0LO8kcNWp1kgGQSY/V3d/
	 4G+rznIPytwsAp9Hii1dLT3Mgejc0On+eSUzdTTbQha/6+blFUY2v9AaAhDMewiwC+
	 4DTOpu/JKS/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6F84C7EE22
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 22:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168358380586.3094.11816063366963841145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0cd18e8fea95e888b7b5f346b9b8656dcc448f74d10e34c14b678eb71ef58d
Date: Mon, 08 May 2023 22:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683583805
