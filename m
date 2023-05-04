Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5667310EC
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00B51C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683198666;
	bh=7r9jLhSYcnLOHN6ZK0br74AAaqk2C/ettmKbHEdiR4k=;
	h=To:Subject:From:Date:From;
	b=ospdCshrm5Q3z9h9wqYyMDarIw4BJuANeTwHA48fjYd1ZFN888Mftpx3ciIWTUbJO
	 NyM1uBSG/2Jwy5mPA6hrDCH3e8x00uK2gZKbrHW3VCTxlwCluGGPaKyEQSgkEIcT3f
	 Cp+vPk+NNbAADjmVyhVRddkvAchAb/NXFVHf6hJupUpPJ/6qxAn24DQx4yYDkiVhJX
	 C6v+O+KK8KaoAbdl7BQalB68RfV0ipZJPWUvkNBVQ5cGQtmRw9VgdQ1gjkvVxsecdl
	 1vvS50XGpnGF9orWh/JeO6mX4GFb3avlxiOQfEfIDvHtXKHfcld4zX8jkPOv5Mn9bU
	 TrOWgEvZ/A3Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA74C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168319866583.3421.212025647438560592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec93c361268ec674ee4f090c8e5bcb05b8cba02a767c2ccdb182994ff57a5ed8
Date: Thu, 04 May 2023 11:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683198665
