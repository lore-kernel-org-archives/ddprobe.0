Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA6CA29
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748210994; cv=none; b=u6jipNPxMIYY3r+AE4wUBVjNZmeLph7gJjuRtHHP0CM5sMGM300HK/j2+3hR/UeG+O9LzgGohtwETDhqNWbplPUtYZ1GC8uSL8qmEd5EUGFQwogMolJghS2Ni9ZOF68Txjp1W1h6yZ02UCRvlJgK5NSY4il4CM55cOToR4/5OdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748210994; c=relaxed/simple;
	bh=GQnGSnnb4x2TgrK1B99MP3l3pVEHtXzEBRmJqilDM0U=;
	h=To:Subject:From:Message-Id:Date; b=etIRNTX2ez3fXg2GF5sqf3+BxNWZFI/iboMBWIoeGQ8gbgHgcDMNyS8Za5f7ZcieLyOCOwAYiCd5GyTypU14/vFGwfucuEBxjy4Ctyp4rbI+YtXlwpD+W/RHKsvVdi4gxrO1U5ZVtKS2wXKFDRkcRdvbUftaPttoAeDJdFab0eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg/LYHKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg/LYHKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C3FC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748210993;
	bh=GQnGSnnb4x2TgrK1B99MP3l3pVEHtXzEBRmJqilDM0U=;
	h=To:Subject:From:Date:From;
	b=Cg/LYHKVi/HD9bceBEEl6sm0wOxgLPZTJik5U7ak7wqF2VfGOlVacxxRx5zujBqyK
	 EV6U1E0GU7ZNPdtVY7QHaPIeSqysayp7R7aBkN7/+AXr3Wg01Px4NkCRJ0L7yVuHuJ
	 rTcFhmi+PBNCe9Q0U7Hayp05QUe9ctiJmXCYVwWsKVpmZpyV9RXSuo7z1Zz+pceY47
	 wGoquHMA5bHYxxEYhLG8dFrVZcqC1uI+jww0HEbAQ7uVkjJAvCQLpO1D1DfvDb6CKT
	 DO1TJWGRCf7qcrLbLlg7kGnQekU4VLWpFtNtQv7fEErx0kxqgg70jH2eD3rtq5uIyJ
	 cWjF9DkfsuzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CDC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821099357.763.14340816968030456845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8506c5dd7234bc94713950242c76f2371b5187b406d1aa4e53dd0b1605e8adfa
Date: Sun, 25 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748210993
