Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0CC6D39
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 09:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJczCSb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD241C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697188628;
	bh=nZdHigKlSJkgGUR2YjdigRuwo2pU3Qxqay5Tkqal/Hw=;
	h=To:Subject:From:Date:From;
	b=rJczCSb6OD4BGE/V0TS3+tbvUlWfm4fWxQvJIG20NYzpwaSeGf1KZWZOem78HV70i
	 OMLr2E7BB7Q1UtSm4xgZ8yyOfSC/xUrlgy7xUC7VJV3EnuG0facQubsyF6aGG2Af2/
	 LMsFGuBi0grm6qPclAtBBIr3xOozwWnkbc5QjduKKyZhE1BG++J0efp8HTKuQZaUcx
	 2yzCKCvQnx0IXguH/hVLeYzdMxk/wpY6rEB7VqgOefHRewGwN8szegEG7+I7MiRtM0
	 vy2LBNfpKvy0QkmmYaKgkjPakthcVyoUxlTNO0IL5WZ1sssvh/hUS9MeDXG09ihH4X
	 FuFisTO9X/2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFBECDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169718862870.32226.996999360116211761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca433d281949453467ab0f0dce3477fe01380421acf8c764db39bc9376ffd944
Date: Fri, 13 Oct 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697188628
