Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC72C747
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 12:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1970C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 12:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684326186;
	bh=H5lPr0hAiTkmFAlSoFI4NuWGmhBJs7I+JH0woy3GrNo=;
	h=To:Subject:From:Date:From;
	b=uqoO7IRkkfHpYRriGcNfvYOzS07rFEIIkBKdhP5dvnfoE4tlXgLYPg+28Ue+iV3uK
	 mdynKNjJCmH2ljrFWnPV09l1DP8eJSkAbGSMtKr7JuLcLH3HNaZsARUaC6/sKM/+bd
	 PnmiwjrHMgcINEfRcPFCH4ar3g4ytpicwsdTzzQZsybCZm1fI34Chyc6C4R9+Oxst+
	 yU5rCeRxl09H5928sNb1o9DZKoQFUn+RGH5zqPw9jBGoeUvYj3D1YyOPuOFtZVDkvd
	 gMNJY3C9A78Pre/B92hAWROqx119FiEpWBsUs3Ht4OxW2UR/O+xQ2GsBK/hbntLE5k
	 xy7Tn2i0DJPOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFBF0C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 12:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168432618583.29669.13790526881139932680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c908a63d61ff035e135fe3b3a1fe55df6384512364366be18a0c16767632ee8
Date: Wed, 17 May 2023 12:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684326185
