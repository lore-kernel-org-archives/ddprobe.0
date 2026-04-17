Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65562D2397
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776442053; cv=none; b=YJFb2LwJK7dHdAL8pKa0zwJfBGAN6nnBN1cy7erTDA5yPFnHggnudwdWFamxdArRhQ4rYqek+Eoqjvx8gy8Wrq3ZWDeRiWf87r+Uo6AWNuWAW6TanT4zFTm4xmQqN9rtHXei/PnXN7K2pUYsxuXdMyMKY/THW+rHsv+aOr0/2Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776442053; c=relaxed/simple;
	bh=vI74/W8qbGS4Yn33Wgw51b45tZiLs+AXaJLCgXYKCtg=;
	h=To:Subject:From:Message-Id:Date; b=T92JtzhHzVM3vwWcdL2vXr2mTs3JlIfuAawtr6+r2gEnYduL41/4TIbwTwSsgFyEhvvp6m5xjHAz9rMq8GNJjJt2aa/cMnf3cj3R1Oty6pRU+sqSkkv9RAya0v/LJDJ4wG83XLkNz8TdRkVe5R+Nu+To1va/PgBMb5SavUldfIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST4dQqZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST4dQqZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B982DC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776442053;
	bh=vI74/W8qbGS4Yn33Wgw51b45tZiLs+AXaJLCgXYKCtg=;
	h=To:Subject:From:Date:From;
	b=ST4dQqZvRqBqeP596FEiVg9Eceieo1yAJqVTDVkvN4fSi+hCaRXSDo3fQZeBvoboY
	 sYHIxkgq/U1hPb27EbzHVJDlncpN3HcCi26G4CTOyGlVmU/BBbChsMQp5gVc/F2doY
	 GZ35EIX1wfsDaSb9hdgfIXJVHqS1Ioh+Q4U3Qq6Kx4RjkRRZ+Ltwd3bERQynsUYmUM
	 g/DbHIbLx7ATOffuyM61r1zh9nWnDRy+VmrJb+pA/PF5Lw/V49g3O9aTtPti/0B0a9
	 8QuOVTHNE5C5GuzikiNx4BPyerSR06pDGLbHR1yxeDBeQsX8xAYJ2xhLwuj07QRn+M
	 yHb/1GCeVJ36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9751F436B9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644205368.1026.12520837959972852301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c000fc7c310a30b204611bef87f81570320ba7449068f667348d8c128a38b9
Date: Fri, 17 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776442053
