Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCBEA32
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748165394; cv=none; b=bDpGsrgeqfm4tscNp2WdvU7YwLZP+9daWXorW8jwg7mE1R84Kr+UInlnU3PtbG+fga8KDLLaf0A2crsHbKqhzpnO+mJHTx4AmqUp2Z/3QdJKFxUN2EY3NCzzDdEAnChUF8ywTAA69rSJQIpVRjdKfgpjYCcI7epSaQkahMKS1tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748165394; c=relaxed/simple;
	bh=X/Fz1YR9G+XlF8u2wP0n30RTcMGb06qm6neNj2u8ts4=;
	h=To:Subject:From:Message-Id:Date; b=TeEUrX0f/PsntBhuIUXu8sBUJH4P8p8gqDwHOBMJkR/0M9IlO0h3HI8l+3e/hb8uEZJawHM1kMF5uNfkPoKuso7BDKsjs3sEKIV2UqMJKV1/N/+Pug+bcYKy0RoWLxZhxDqFBSImNYVy/X9mQsIrHDTBwfAUk+GgeFzzv8SD4TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UleQBa7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UleQBa7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D83C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748165393;
	bh=X/Fz1YR9G+XlF8u2wP0n30RTcMGb06qm6neNj2u8ts4=;
	h=To:Subject:From:Date:From;
	b=UleQBa7FAjyWW3sHVLLRkxUani0sxIVdiLSZ9jxUSDzPaq0wvhdrpz8r5K4U/yzGe
	 PCNld4rGg1PXQlfESM7y6aIXtcaUtb97iMv5hTrPSy+MPn704z4ACRqSZbCSICBHK7
	 PcfZxrV5z6v77aLdBIrLJ+vQhSe9aMyQSh/XRhuPTr700kRDk6pZPUJv8G+oJQ49OK
	 udzuPhiCj4DzGYeLOF+qk2Dh97IChub2LmziO++ueEzCDKPlNFqkJNKAup6DNvxzei
	 dswLyt2Wjbz0JtwHqN0OsH6qPp6otqxqNOqKU9CDliS9nezd3gAImu9tzeKiEA0afe
	 MxLXodKKEm18g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94453C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816539357.22811.15427574670747278815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4418df0a254612561484036608c08489fd371c968a2f5d1fb948c5430e20a7
Date: Sun, 25 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748165393
