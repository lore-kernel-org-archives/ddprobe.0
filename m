Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA05239090
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747393194; cv=none; b=qQ0dchcTDVcJ1zUVZ8KOEhIiiRjn6+oepKbNLHqF+DTXZNE6eUyF+ROVNoyWTtx0/bwrO0eKfB/OX1ULnKc5YhKd9TbMMzJibB0x0n4p9AErH2G6dhQVgbT1ftmYk+wCG8Wj+Zlwwlp0YQsDL4RwdwSeIMZ2Nrb6/whZuQ7nyFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747393194; c=relaxed/simple;
	bh=O6gKZm25O5dPFJPi1Gz9GiMj69479JzT/QY+HUwgSHE=;
	h=To:Subject:From:Message-Id:Date; b=rpxeIg9S/UzIKWRe9sPzkQkUdeHsEUaRKdH9s9gdcVk2mD1oSTvP00jAG+3F4d7RoNE8jFzsLpaPCa29psHxdG4PxyLVpa14/oHNjJ3eGLL/2KMWhQ1R4xf//YxIGJRy2stw3hKeRPSPKnuYcG49TBUksKRlcrtRDN0FL+1aaUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmM4YaZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmM4YaZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84D7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747393193;
	bh=O6gKZm25O5dPFJPi1Gz9GiMj69479JzT/QY+HUwgSHE=;
	h=To:Subject:From:Date:From;
	b=VmM4YaZFrk7DKwjK2SlKvPnHvU3FpiE7xIdYIas8jGEtXF7Fz7jYj16gMkTeFiqQu
	 FIGxFLv34Q5g4IV9ugefaurqVOES0lFv2iVFldmSDo6ar1GBEAYxSSNJy7ns910wEB
	 prjDbKapdmO2x4VRZ0FfnpXxkLbwtoMCJEK//wYrtIzVHvExqBC1sHU8Bldw0eqShl
	 hhkUCBtpLIyxI+Yh72qtPn5yVsHe9y23f1KT4tWp3k8D7ZoqOR7Pxol8icrWJrorU3
	 LuVpb/k0jC+Nkt4xdxGl/tdDTbIkYmnh/MRmYAat8psoKb3OI1itow9ks8fEqW0ptc
	 Z61hLQJmuNY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E9DC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739319357.9256.2157534193796666899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1acac716609bd9d376ae996958eb44d7806db9df4f1b6ba7cea932b80354c2c
Date: Fri, 16 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747393193
