Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA28A4D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705716497; cv=none; b=vCJWdCefS5hP8MMx2SfdmW383mIacy+WNbS8R6MaWQTqj1IFdvcG/hgpfnZ/b3nMCdgExVdHQkSrYffjzDLjcu+br89xujBnDHoc7DMH4MV6/gtTFoEO2s8s0zxLvzxpixcEYaKb2fLUep4bEk8kQD+Sed44dqRxLAv3WukEf1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705716497; c=relaxed/simple;
	bh=LvTpe/Wft8cx9YAQVs8v/SUAXB4LPRgEe7z1N1EFE5o=;
	h=To:Subject:From:Message-Id:Date; b=Gk2XCrYH2bHAsW6RK4y9yobIUtcOthWuPsWCt6fe8rEgP06VzshbZqlWuiYXDJeXlsW6pAYZVdcNQ7TRSiJlTJAXqeBgl5wNFwznhWig2VM9lfwKndNrbM1Alcr40GyqE3D+yEB3GNvoo1IOUPcCOGD7eCnD3KZ1SczL4i+E//o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1Q0KUr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1Q0KUr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C84C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705716496;
	bh=LvTpe/Wft8cx9YAQVs8v/SUAXB4LPRgEe7z1N1EFE5o=;
	h=To:Subject:From:Date:From;
	b=Q1Q0KUr4E1roU+VWebn6gcjhyg/8yGrFkCH6AhoHulXoKfehp6l0D2FC2T5YPXHtJ
	 JjVW6aih3Ms7sy7Mosw69MNPnCgnP0a4C3RSqcSr/Dep3KnJIVZfeeWOObjGafKP9H
	 uCluH6oOgHkDJ//zj8QNaNtFzJ5tm1uhd/c6v1g3x9DcZtrfOB0oIcJkceJYb7+BSl
	 JjJfMX9H79svkL/Q+efTjtrTqr5S17PsNKWl+CEyB77gZ676Cjpos+ASyQzSo37yNZ
	 JtAu6LeRaVzKR+YmoZCLvDoKnvkqcxFFFkCx15jhzAs3vLm84iMBVFUGzSRmW17Yb/
	 45SLVfijSNGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B67C4725D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170571649636.4848.1693453745938510970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5408708a2d3e10f09b5624489b67b25861445b93127c375d19848af319107749
Date: Sat, 20 Jan 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705716496
