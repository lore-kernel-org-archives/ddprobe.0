Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360A51841
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 03:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7mKuN9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2BDC433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697253428;
	bh=zlcbypOVc7Sk4ouLirwxC9D4ywd0+CirhjRz9Rc/ESA=;
	h=To:Subject:From:Date:From;
	b=k7mKuN9E1OQ6Yt1imb6aRRB5hYDGstLBlgLf+26LfIYHyF+yJq3m4U9syE06UMq5s
	 54LaZ7XswBOCCq4vKCfzc87fSbODtYF5HRKHIuFx9yL8nkVTPzSX3tbRmY3G939hdq
	 O5rDmzw3sGulpXbckuKpglXtcJJFxvyMhTr+aJ7sNeo8h5E5EcsFbM2Dm1TbP1virR
	 yqMdcglZr8d4oQBQ+VLggi03GIQOXiMgPiCNS5DcKQH3L62nhHxmS+i3n/W7BaNU4F
	 +MwmDUrA5batIyFYGrp0liioqA65pIBWCV7G29zA5TB/czSGfhhXkYM3AJxBUNI4GO
	 ay3BY5zExhY0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46E1CDB482
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169725342866.30797.17920793340802710749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d25e412d74aa37ab2d8e1debd4094114b97746b11ad39df307aea8092a38493
Date: Sat, 14 Oct 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697253428
