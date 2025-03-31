Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3444E259C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743382794; cv=none; b=neIv51/H+YWzLkXS3XLHtl8SF81TrFjVR4FvL3BViakC90W2Fu2Sr1KNIcAy31mj8b4WVwlV5PXlGHuwwxCa8+xUsvkR1wqbXd9G2+o2ktrhmRwbWxdHVVi63HKUrrbbIIF76CLA0z1trop/JnxTCgT3cliOXYHc3PteDjQjGJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743382794; c=relaxed/simple;
	bh=vCu/VX3tl6fiVfoDlCf6/NqbMlosWpkhnYoS/c/uPsw=;
	h=To:Subject:From:Message-Id:Date; b=kIWOKTi6Zs+bXumJe3nbhc2asww1DZTq0SIuNWrw7xsMj5H7lK5g400drRZ7ztSUY7mpIQzK3P5LH2cMWeFAvbZpUFVXdL+GIj9h1v4YBGrcz/POXN73mD3AM60YkA22lwpD7gz3pLFex0oeqd5L9UEX/FGgf1dnRwhWgZNByKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVhYAdEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVhYAdEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA2DC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743382793;
	bh=vCu/VX3tl6fiVfoDlCf6/NqbMlosWpkhnYoS/c/uPsw=;
	h=To:Subject:From:Date:From;
	b=eVhYAdEHJ5Z07NQLMTDIL9WSPpdWw7Ouz71uqvEhd0Mf96lLJdRZlIrukXKeqjZi/
	 Y9u5NevAka9E8JBrLgEOepfDfal0/2xGoK7Mpp95r6JjqgFNzw1SG62bqX1R8V4lfn
	 vJ4PXY0gZhxKgUdLLCNd0C6C7+86wdYnY3svBfwcp38TCxYPlfUnz7mHx22HO/qqBR
	 hlkk7vQmkJP2rc7t4Ic5JUrOfcVK1YpWky+wnqQ8jUtcZUPCoimyEa4kzwWH5ZUY+E
	 PjQgCXIFpJsv1qfY6pjFnBneHcORNTKMIu9B9iVDjn4q1JMX/h2UXNRPE4klx1hSMT
	 oootKSvxO2W+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B898C28B20
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174338279360.29351.4666305817358823625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0771c35b0f13ea275c1ebcbc898f852a2b24d87ec70821fb48ace38146ceee7c
Date: Mon, 31 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743382793
