Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6088742C0B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743137994; cv=none; b=fXNjT6pnaNWSziAuzsiHGEjhbWmoS+QX5QrU1JoFKUA84oLXWLjETE4hAedVbWd1Hs/cF6kk6nfX/IkxmxTaBEWEK7KD/SrjRQraRt93alt/fmMeP5oqC8hymYlgg93NqXG1TOHSDUnhbkMyw6dzboY8t26bR5AVMX7CsuVuHew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743137994; c=relaxed/simple;
	bh=5rJj4vWLbUsEcpitXtJkp0yMFxOct2Ccm1Ox064HkZ8=;
	h=To:Subject:From:Message-Id:Date; b=bAwy9pr0N4dxPWrScpuwd53Kjn+1bxw5VLeRJ8UJNnSqmfvP6IKjPs54h22fv8KU6kgah1fiDLwrbR2RwR5pfQ56dTNF5U0jxREvq3t6BuyCe8c4SvT7ROccRD0iATVQYeMgUG9uekAQ7JT/Y9Q5NlLpHKu/P3BK2G4goajkPxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+zcwF/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+zcwF/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B837DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743137993;
	bh=5rJj4vWLbUsEcpitXtJkp0yMFxOct2Ccm1Ox064HkZ8=;
	h=To:Subject:From:Date:From;
	b=G+zcwF/kUJVkSajBSb/s7Me4pt23V3DHpESP40toYzPq3+5InC3u/WqQvcRBtUK0v
	 FJTcvvzfB2P7ov4COXLai8ZcpSEzM/X2TSbLeDzjb4E5pAkbmKTMykwR8c0QzFViFU
	 78VX6CuW5uOisZU7O0iJUoUoWBwB1EjPQDs+O1GjNelymEkwSF5G/rdPCMC1PaC1Pv
	 mK1Lq0bObdU2sp5qCLsgLtMHx7xbLOZepKB0OXtahaP0KGJdKFSIxbQlWtZx/hXGOi
	 hFjEpI2WIc+WYhJX0GAMEyXbK23aVGNLtwq9x1H/7wUvnOHpDX0PTrxNCVu4NvYKCW
	 dTsm+64gU+vCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12A3C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313799359.14519.13270911798463912309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16aa8b4803a342c11004c36e9b9d255cad088afe5abc55e9b2391047dbcc2c40
Date: Fri, 28 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743137993
