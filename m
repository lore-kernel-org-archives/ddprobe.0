Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EB6176FA2
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717839443; cv=none; b=LkdMM7njBGRHHxkeO4fj9h41wGhjt1AatYcD8B+OO9GgYjZJTiu8TNrLURAMZuuBBuS9L04J1X1B4ZRI+Yuv5dueRXxiHF0cRVrvbpxXDwkr+bn41K0apU0ghfmr6w2+0vFSo//797VRajhrk4X/Vc13Ad2Cx1ivQK8jXkmiE8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717839443; c=relaxed/simple;
	bh=hRCSu/bVBpEibnZg2tTDskm/NB+Pb6CckTGxfgRnDc4=;
	h=To:Subject:From:Message-Id:Date; b=Dgs05f4S2tjkKDnii5gsy5GSjRmNKLzW4sM00IN9B4ZmEtNShnAHk2sl+tLQOOdXonevVxTd3unqNNxpMY6s3lHMHn59sWITLXwfbp19HY8py6IwC0yKtYn1SFU1Nxzz/Nibt1v3Bsm41omYxaulQTAcWF2sDxnWxheZ7Sk8Ur8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEjERJRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEjERJRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D4FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717839442;
	bh=hRCSu/bVBpEibnZg2tTDskm/NB+Pb6CckTGxfgRnDc4=;
	h=To:Subject:From:Date:From;
	b=GEjERJRbqH51513H0femuxE8girLqG63E0Q1Vk5bZJZ4bDSeD3Xf+pQosPsTbL6MJ
	 fVdLkWulcjUgs4pnwQkbu28v4A/Fv3fVepFoFE0dP+rDx+37ezK34gVgc/KY6IGVSo
	 /wfQJDeNW8D78EvuSF6DMFvwwzhFAznTOlAOt+U1HO8f5HarPTKdU7KLmpUbCC14Cz
	 FwW106uO/9fxhyexq+Yy8f9QcbUIyeLtK5t29eCwZZ/iRwbjZhP+T4rglydl/w3bib
	 9Q6B2/XmHN5zxaFK+T6+VHrsx824d4pT+vkvyk/9yo6fo9ZSyZLwz+xo9BWc0X0P44
	 RCJKMjriQC1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC897C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783944282.21504.10401738758101152258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc8242af6a605978a0f206b5cc97d7a8f8774c38723212b5ebeaf26b0e92d45
Date: Sat, 08 Jun 2024 09:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717839442
