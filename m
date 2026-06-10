Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436302165EA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781104594; cv=none; b=L+IMZzCHeycNTmNc/COywifUDSXv4C3Vo9gMOeEhruCBlCH/TWnAix1QzU0PGlu+d8QPdo333TFVcbxzQIU8+UTcX5SY8ysFFr+fFLywIQ//ZMobShVDAJiYX2/7t+1R84Ymx8NMNXJOmNo8d1/n7961b5uOJew3FGTXtEZJF+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781104594; c=relaxed/simple;
	bh=l9VrpiUDt2LGQrhyZOk91CZgFfFaNrPfePInYQk0wAA=;
	h=To:Subject:From:Message-Id:Date; b=HyMXuXrBRXPl5o8s3OD+/ntRLLBy6UTOd+XHY+EHwBguGSbvh4w6nukXJG/mWxE1uCuXPZ/grEL15eazcCrsRYEECFjMDBd6OonRVZsJpsCGS/SP1U9fNoa/01BYK7JgVQi+iqBalQ81YDTVZQ1GQV9SFW9F3Jj/RTtTWu4UMmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrJDWAV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrJDWAV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03448C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781104594;
	bh=l9VrpiUDt2LGQrhyZOk91CZgFfFaNrPfePInYQk0wAA=;
	h=To:Subject:From:Date:From;
	b=UrJDWAV/JNjnPgpFLDY65iJLcI80ao9h9nh+IwDporQlDrA3kOxsMb5pTZS4EgpNn
	 3kxOLUyVy4hwMpR/FTlckgEzDCNV4HMPilkur5ZwnY59VSTU6s4hd6RopyMnLOStio
	 0B+l1MYo9yTjw6NlPRxmGnHuK0SJG1LCmk6WMYSIQ4GE2ylcV2TAZ/K0hVO5hIpcB6
	 laklvEtFPBUhjBvnT8Kxl8NLxcI+cMvhntL/vbRkn2SSR53qzvCQFgX8IgDs8mQKEH
	 Ilom3rCDbtruYg3rOM2icIj8EU/Lj0YysVGZGW5aItqa1gD5vx8mhl8RGJrgUCqvq7
	 eh6+JChOTDQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C503FCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110459376.1862.1476391652479454197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce70c130f5f2d2d74cff314262af5dc7b3ab09f9a1cf1c47bef54a8f07a3045b
Date: Wed, 10 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781104593
