Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDA453BF
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKC6R4Gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8675FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700384896;
	bh=k8W8TjdPfMsWNMX79sIhKHCtO0hhxw3JaItb1nxf9mk=;
	h=To:Subject:From:Date:From;
	b=XKC6R4GdjQtHmaZhvHqikviFwJ2hHRagJy2hC+uQmXRf3V4Zsy2yAM7Z2efrWw7Tc
	 ac7u0z3hrBCiJd+URNFfHOOyPS2XyAWk4GM9a2a6Tk5PLF3OSuQ/pUk8raRXxSWk2i
	 qF5qSnQClcAB1WSC5X62IpMQuNpZ8PzXStnXg8S71RL/fwxup8vO84LF/sc2iIAOBu
	 pZn/a1aY4/WxH+sdsGYmxjPgcOxEI7Kpoyyu3NG5Sh5Gg9q33cOGtc9wHHD2Rse6M5
	 HSbnonQjmovbyGSe2AygW9QrhEdO6iMBbgpJMo74gKuaIUXjlakGW8njTlQnCA6Ug4
	 kx8mxarMsBh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689ADC072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170038489640.11369.2737904274438799846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0ae0d27ae128f4b905ad0bed29c1007c111f2833da9041f5c4b79317d515fe
Date: Sun, 19 Nov 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700384896
