Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4831D417C
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734332754; cv=none; b=tabS8v+x75y4iAFyDakMHRtGze4BsrWqQuer3DVnsk5t4uHn4pytPUsBb8PXVd0aso6xeXLGsGs2y6KQTEFKVwQhtzXNkppvvZOshEKUpswDzULmOWcH2+nQ/5FPgXDBrFaQdEje7hxY/X9GJcqUKnMyOVKXP+0K+wQGt48gSmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734332754; c=relaxed/simple;
	bh=t8VeiYNhJf4zzY4yQE4w7Xn9KMdVkxA+FbTLzPEqgrc=;
	h=To:Subject:From:Message-Id:Date; b=uJEHK6hXk9UyXpSOxjZFj8BiFqvfebmsUTsGwbXSeohWqnT9J7iFVAGpUj+PmLiQSX5S0EnuoCdw5gxDaILj6qbT/ZyhARTY1KzqI7YGoaxQxMTJu9uM9FXX/vbleTJbszPZqCqqz0d4uG7vWVEjcSNEfhALW3Il8IoCqa/LTew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hS1y8Rru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hS1y8Rru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8D6C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734332753;
	bh=t8VeiYNhJf4zzY4yQE4w7Xn9KMdVkxA+FbTLzPEqgrc=;
	h=To:Subject:From:Date:From;
	b=hS1y8Rru/7ga0v/PkReAJMavD6xbquP/NbxbpKEILeQiWZaJyzPbeGwi4tIicQj41
	 Kbwv4jDvcbu7wfHH/23/VQNPCH1a2JLdXk6G8Z4hqTtpeGqEudkKg7Hgg3ktVjU3WD
	 r9YaCNGbM3ugi1Ymq02zBRNnfg1TQHHcQ58qN2t20EvVITNmiFvP9lI+N9nhn2y2El
	 22iFqv1NVPO4q3vmf3UGaSooVMmVBr1ipJ3/iBSPCUTEhsVPH6q20QeyrRxcgXkmmp
	 0S5OydhIVHYRhiT+8EU0F70AzA0Ouj0C759qTEmd+xfDmQ/EC7r75e4Zyc7rmzJJ++
	 GYTMrFenkYBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC2E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173433275360.8241.18312120894480791165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a06b85692892e128b183f1599798e228415d83db4fd77280784805e0e040585
Date: Mon, 16 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734332753
