Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7561DDC33
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783396714; cv=none; b=aG2Pl74qkGzWpCqXhcWUvQjOzmG8cBPUx9YxfxBsNFubF9r/N/BZhWrWdyW14bBhySdQBnUYK8ojMqGFGaK9cJ9qtQTrA3e1x5IY6+3k9RpllT8L6UeXgEedsdiV7CPKsCgiA/UuBxUKt1f3YIAY81JBLjf6ZaXJuUXxR4dzujE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783396714; c=relaxed/simple;
	bh=TcNX6XsQUZA031DI1Wp9EsE9BiGj2pCOzKvCGTa8xBA=;
	h=To:Subject:From:Message-Id:Date; b=FP30yX2ttSHiU7htGq6BE7Ply+82DnlD+0THsRwV3mB7BjEQl43ppPW2UM9CKPfCD2NezzqP9CpESghSiEhHQpZMlVCbDbpt0AqNNvtOJojXXCJ/II5cYbTQQqHNmbsAb0G10eA1nzpm9mLYXbim+yh+0y+U5ssaJJG+d+h07SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gqh4QQ2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gqh4QQ2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF82C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783396713;
	bh=TcNX6XsQUZA031DI1Wp9EsE9BiGj2pCOzKvCGTa8xBA=;
	h=To:Subject:From:Date:From;
	b=Gqh4QQ2erakNVhD3QZugGxKjFWJejMj4+9/Y1f2oxt2dfqjNfQuwAnh67hdRI6dce
	 1dT12fZMvAWMRFyIa+TDNiFjYAs6aLVnFA0EFdRiwG6A8Erv6j3kLE/KqHUS9c7Vly
	 fR/2xO3XtcaSREg5VUvXv2Mmu1d3Jzd6ZhrSOAWD2wfVLFVrjBlhnxKon+6umdIdrz
	 CLvHEI3+3K/X5JLqnr0UUHT7cnnnT+wO5p2xr7LXN1cp2tVpl10/DyQIBUHzd+fp3e
	 T4QUV0/F2rlMIQNFieweIGYukhKlG1AQSfwIgtEcd6d9PdbVb+VhCeD5oxN8iFhjbV
	 pAo0Brwr8Cggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC876C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339671369.15621.13061556587963481183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c858dbed642a1451809245baa7398a1cbfc0424db721fd2bce1f9065fe528d8a
Date: Tue, 07 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783396713
