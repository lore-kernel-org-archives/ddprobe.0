Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C891B3D6A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F531C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664746853;
	bh=W5p8+A6IQRaWyesxPihS3nTYy5aX0hUnh607pOamhvY=;
	h=To:Subject:From:Date:From;
	b=Vw4boPTpr1x0YUrzw+DnfaYy1toxQ1QdIfnV1I20+u1+MVTRyuVpLEIe96I7GpAXx
	 3iiwCEQZdXI59xLBRPv9mpeXJGGtu+94OrcC6+adSSVpxSh6Yu2asGoU4FOozQcrsQ
	 LaA6U5ej6b60/eJlth84O+owPYuOw+BxrOuUnDS3uGGXnZC0DAVU0KBnitrLtMLWFm
	 VD9DICWuNfPKELU07KRnNusFsLy60f9OQCA3vjzFS19Qn0CpiUW8DR4HEz15H4aS1K
	 ifKD09x+wqhB/HOUR3V4U7d45Dd9k7ptO9bSdxUV/pQ2fvlSqLT23A2jDwhmrLIaxh
	 ZeZX114vzG9aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56513C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474685332.3252.5777602963838008048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70b804318e7d731520e160f1e0e2c7730d689577cdf8fa8f64a6cf9030cb428
Date: Sun, 02 Oct 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664746853
