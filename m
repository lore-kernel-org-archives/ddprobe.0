Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AC37C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B835C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673716287;
	bh=K7er3yGxNngUAN6hdscAt6gRR72pQDuOAIJv5dvSjyY=;
	h=To:Subject:From:Date:From;
	b=HMVNUTd4onQPDu+nxdldKgUr7DwiDqTI40ipWZGAbJcZ0XpPcFkbX4NiXso4cJ8xA
	 O3ghSAZkFy11fbeUM9/RkBtqDUXD4Rg9E5Zxy5WHRl52cBj19j0maSB2dG1otSyt+u
	 fJR7L39K6iaVMTN1E7dmnxRlxvugIwr5FcLbv7CCWI0bi+op+xB8+fV4LqViVkUnGj
	 egmFsDTazw4GIyNJ+XQ9wg6y/4iwGLvePCwTFmmgUV8fNWFdMzXDuuCm5wZ0pt82C1
	 O494ulHQtngqZOyFJg/D3TONExhnoAFZnCvMizWre8mtubfy+fFs4DPoGNiT5pDMfb
	 I0HheTQ7uWnPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611E8C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371628738.17415.7893642285343720128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bebab8689c337450cebf3a47877d1e2e9bc00d343125ac6473c61936dbd439
Date: Sat, 14 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673716287
