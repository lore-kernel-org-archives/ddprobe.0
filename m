Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37BA372
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE32C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668127854;
	bh=QtAr57zcpiiRBotMEj5V9uDP4tgab6XmzUDRud9F1c4=;
	h=To:Subject:From:Date:From;
	b=lEhKRauEERF6KUVd71Amzk7Tjq7fPcChsc0ZfM+bZ/Y7TAXFveA075sSrI45KoNhi
	 0XikdIcpcHlRNFrmnj/StUdbU/w8agq5vd3+VkJzZmAcTVAA9gTz2bh+I2nH5yVgO/
	 ET8K/KdhucG37tuBLtXoe8emSEp6nKmHYLxgr0xF2PR5pXVRQ13j1OCepN5bupkOlU
	 oUfUNzfLhXSsmCquImMKgsL2PSZE28Zuky4hhWHu8IrZq+MPI2/oW+Fc7uYtrzKrFi
	 iV9rUVbFHjMoD351K8SCmaJIwrI3Sxc4GlWMBqmuPq0lj8dyuLUcw1BEBO0cPtA6El
	 Gs48FMGoCh6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55979C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812785434.14965.13152493609825574379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687437a3564a3e505a3974c2c561b10462474bcf5077878d0de9692d7cc87cbf
Date: Fri, 11 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668127854
