Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D2DA2D
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDck+BC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90D6CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698193096;
	bh=n0jtuTjaurHG/nUOjIJZa5+RT7nodXIPB10wU22nevM=;
	h=To:Subject:From:Date:From;
	b=GDck+BC7DfXCvgHWDKJkddEldLzxObtpX4Be+D4nbK9ShG4OSQTIUie1x74p/J5px
	 +XIG+cHUHRpCLKb/wfAvYlfYsbZ7IikZAjtVu03JQUG97jHoJS0Bkb0fzsTTrufvWZ
	 UfsyHgcAuWnIYlg79Yp8XNliPFABpZ/lVsqePB1AJaANUJ950WjcTOXN9f1z6eTu9p
	 gipRBV1Pk/f1oXFKEDGeg2OTHWHuv7/Oymq8qNRNF0CEXp7ysyqf8kZMuGceagyhhT
	 hWZ67/JMj2i4qPH8uw8xTl4YxuKVwRT4e6JJPT3YnRDxX0JJ49S51TRniY395T1RiB
	 AAgVyukKB+MNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 719D8C25B48
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169819309645.8913.5747754575605648937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03aea2d62cd794267b83b8cb96aa70fc12a9bc9c2aa6e3d61f3fcbffbfca93dd
Date: Wed, 25 Oct 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698193096
