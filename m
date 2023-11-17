Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053A53FDF
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNltzBC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84F8AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700230696;
	bh=Gr39wrhBVFI4BPhWYdKs+on12PBiYK2rRPwOVLLP4J4=;
	h=To:Subject:From:Date:From;
	b=nNltzBC0/LYncRMQC4LnR/yQcJNVdcoE3H9iEL8Q9xtR2dME/83zHUnym0eG1UzMt
	 Odjmf8LcZO7qktH+qRgHN/vUIn8yuzlyWN8vFm8CINlwdbdGxr17H5vbm2vwWMBGsP
	 4EfZyFQ0GRZTod2Fdg1falaRJMdhqf7Zn9q7HNa3+i5ptd2KR6hUQMZ5f6quNhpPAG
	 4NSKMXd1GgHnHMfpKI2SEsO3Jnm6+vb13WusxDsvvvtljh46cZBVQRq3O2X52parrr
	 iiXDM5CLBQ5N2yr0EMGc3XfbYReEiZBVMzGpcAcsZV+pepeYCuamTiIB6XePkBX+vE
	 NTXt+OX3duDGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C92C072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170023069641.13380.6930563934071069720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77690d978d52287d7f6da742741649b594057cd88bd36ce6dc2964f0fa79da7
Date: Fri, 17 Nov 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700230696
