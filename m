Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4872B1DFE8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719675263; cv=none; b=W5yTqsWgc73woVidFp7WswWKT072tOaoz/3e0AQEZ/WdSWyV33/asF4+1L/VDXjigdqBQH+RjVV0d6l0jD34Gbcik4/hs86lbrPYl+aEfceEt/cqOAm+VszznqFEvYBmraYqYwNOWwyLI93x940TS0ZLJoBwmLWCRYBIU1Fk1xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719675263; c=relaxed/simple;
	bh=JFt75oV/6u6VpdkReQ/UPXz6sK2vAEjysv3cNr/Tyrw=;
	h=To:Subject:From:Message-Id:Date; b=ai9zgPnz4f+GojgtgmQjPSvPKD19sIAz2MYoxJeF9oQLZjdVaccWRd8EMV+fkCMjXGrfJMjQFPRLa5DIBzgh3OKYvlwu6pWWjQmYyEUnbmtldeU7iCVg/PvJ9+0Q+ONZSIEBO0UUBcnZcb3P3+re6nX8s+wjVODFh0FLrEDAFUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSGuoVwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSGuoVwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CB9C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719675262;
	bh=JFt75oV/6u6VpdkReQ/UPXz6sK2vAEjysv3cNr/Tyrw=;
	h=To:Subject:From:Date:From;
	b=aSGuoVwuXVw5sZpJ3hLBTzBrkmIoDq9rcMo/WVIlOD/BtFIWbWp/5H/svkqfEYHBk
	 Eek6gL16hZM9u2s3Us3GzU7EiBpOabztXoNyYlMKKjkeLnOeHvR+i1lJm/er6+PtY+
	 Y4njmFH83OE1wnTfzQs09R5Tq79skl9sjO9yqN2BYa7J6obXNXEvMD7dSTRqiZGnEs
	 MJeQeS5J9GBGLfUq784Xqz7RAKanyMOeiOyFans0VVUXCuMaNTIw8vtWeO4uk8f9OH
	 iHXb7KwiQRqpByKlznEnxwamRbXDPsz4Fe3p6BrLm4VTb13KaWMfSS5JA+il3f7INQ
	 YKAdVU8mkfG+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57D6C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967526277.25098.13064675630254576439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aa2fdd8037fe4f7c504b4e66378e35f78e0d3a2e8557f2f3546880ad73de14
Date: Sat, 29 Jun 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719675262
