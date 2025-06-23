Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2AE2D4B6D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750708794; cv=none; b=sQIdy/IIImSOTnuFK/NJZaWuiRtcrg3TNZCDa4X166jfb4313qWkq8UF7mvlayimaPSDWSCSzTEAVB9q17eF7HHxcOgKLLa/Tgff4nRbiZWSFFpP2OsLAovxFgzd+Ly3RvyraDx/4zMYGPsYGhDdhHAKQ9a3H/OEgH3vuCG3298=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750708794; c=relaxed/simple;
	bh=5F2KnvIN1UpgpfPL6Ev5VXTL1ufPpJqN7lFXtjn8Ciw=;
	h=To:Subject:From:Message-Id:Date; b=NwQfeL26y0ZJ/+zpSyGgq22y0bEYMBJUWwi+3cOxvbXU/MH8j71pfz3b907njdOgbapvEtmB22+SRT/UCUqR1zRN7egIiriYLV9BzdMfoNOBRCVJhMMQtuRvH27cki3MwVaJcCV42pprgil4R1R8tja1tqBhsn/PdpLEsWMxPMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gg+WVYBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gg+WVYBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750708793;
	bh=5F2KnvIN1UpgpfPL6Ev5VXTL1ufPpJqN7lFXtjn8Ciw=;
	h=To:Subject:From:Date:From;
	b=Gg+WVYBS0/Vy1rIOB7V4k20+GE3qFASystH3B7QYmX50e3jprjtG8uVaPdv24Re1S
	 XQZtDGmeje8MShVxTCDVng1KyVqmReSUn0ITpHDfNMn8ChVdF8HOhfsoZw3q0cykNW
	 tBwDBNdyuURJg2WUtrX6ZoIUibEfHo2E2xE6cDzHGZYzjlehg1CIjPrvmeB2NS3UJq
	 nhCnzjJF4F+aeQG144Y4GzZpv0XVpxl+1z2AfOCsyM8SG1tLTmPnAfHiEd9Hl40nHL
	 rRIaiRbCbwS9IYJPx8oEeFZNZFsQBg9EohHq4UVRaAcV6v83XW4/oiNuCQxabZJobb
	 JkwcDe/ohgFxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90409C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070879358.9162.3361575486837832811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12c1aaf238e50c14723e7da8b2b577e366f907f691e0f1d3324f8e8f5e8d3c3
Date: Mon, 23 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750708793
