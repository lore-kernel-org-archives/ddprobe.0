Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4375A15D4
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXXgDmM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5180C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697341028;
	bh=oQ3jZ7Zs/TN2L28R/Jm8KwgUb7svNcaaUiViPXrzcs4=;
	h=To:Subject:From:Date:From;
	b=SXXgDmM5CeoG/S0IOG0YriBjr7R3NJQB/G68YpAnu11vuSBSoIGVDkCX8lgvs55ov
	 e0Zx4cw4L/kc/+7j0s3SHZvCr39AFJ2Fox+mUjoAbgUe0erIzUYfGhGQVs0e8qLrdp
	 l2iBnEhRT+Hu0YqLCIuUs0Fa1Ik7/CyHfKc9PIFnvOPqShfdg3Vpt1lXGn70RCz00V
	 lInWSuoZAGU1fO6I9VVc5Xd1PKEmwO4+0xStTdTFjbOrRpIyJKDCyvTJk2vHcI8Ad4
	 7DNOBdj559mF2dJUXjKp1O3od2k+sITdWv5so+Xu6Sy6YXBmlD/eB1jIs5bAi5Ok5v
	 OVbP/FIG/mDww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A861ACDB465
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 03:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169734102867.6357.17398131280773544665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79be64dd30a4601a8367b43677e86140f48d97c930107dabc234991c0880e65
Date: Sun, 15 Oct 2023 03:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697341028
