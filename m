Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7EF322E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 17:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6CAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674408725;
	bh=uRiI11JoV5/+bujClIvqEDemSjgPqPX6hruLGAWD6cE=;
	h=To:Subject:From:Date:From;
	b=d3/UH7iHbZD9gzNf6X8Ugiz2WLjiOOA0TxngWUWNPDF/Qd/ZW6H4dMSkaVxPjkra4
	 6+h8W7HKS3DASwIA9o7fVurIBBjqklexNt2S2L9cGLQhWHjCGEVX25zRfN6U20w/U5
	 96CdOGQfuevN3VthKYOmn0PEwp2wplzbuXSply2qAbsTBcay0fbANOIuyfgNeIBsKK
	 /TRVrO/GTBoRVz/WdKx3Ybxyihtytu26e0g87/Yf0hNufJtu5xQmiEIe0AsO47Ju0p
	 d1524Fr1Sg6HhepWBiPEdu9V/v4ukcgC8clnD+CqVYyP2HHgn8sH1QKY3P9IniJslP
	 PXO+sIlQcKsJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A9FC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 17:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167440872572.11273.16823417487364151824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79bf5e961b389d3005e1ee57fc34fa68cd78cf50dc6b0fdf8204323bf2631cda
Date: Sun, 22 Jan 2023 17:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674408725
