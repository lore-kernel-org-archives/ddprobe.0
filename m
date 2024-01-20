Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088A5256D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705740497; cv=none; b=bDzGrC3hh0HChaUSADRm8Ow8kd4m0QfleJdarMw1wp/XJzoqAAYne4sADuL7djRPUgPdPvitCNJBDgSAR5Rg1TgpDEhn9suU6q5xoB4zQVxUnDm3oXJgq9sRccNJ2xeXZysy3nmCAnp5j3ASlovGhGmmXtd5IRZp/6S++Kf6fQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705740497; c=relaxed/simple;
	bh=qe3k8RDKGs+8RT1QWREf6Ycwt3f5VsBnQ8FqSIExkFA=;
	h=To:Subject:From:Message-Id:Date; b=Tb0Ja/n3HZxbRAldzkv5fXxQn/4qHsIfsmfv5mRecRvTVxdHq12cJwmKiSz/Wkg9tScCuAPG0xCOYs2wV+WCrQyrH2q5yiDXD2jRSbr/FYNUqHMpDdAKv/DL7GSOmBSd0HST4zvLclDSAq5Ftzy02Ga3CKyM/bgjvSUZPeFzVjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmBk+pJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmBk+pJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75675C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705740496;
	bh=qe3k8RDKGs+8RT1QWREf6Ycwt3f5VsBnQ8FqSIExkFA=;
	h=To:Subject:From:Date:From;
	b=ZmBk+pJKRgm2gouQ+VAyC1tiJQxvbO7/w8zwanG5QoSF49j896zRaGsCRz/8CCMHV
	 jFOznt5l5sGpo+2xRNvCJ0IOI9h2Afpu/6jBkfnDM9lupqdSyRoUBtxYvpSLMNdV6L
	 NCtKTBbKbzTBDejUXgGnk5rcoiPPrZBhwjPqEegSSMfhtcZoAF6CGhfwdutK7LAeqI
	 xkni11L2gi5m+qzZJBvPryFJU/Ia8rw7RgKbS20pC1xIfKTI3NkMYBZTyzOeYiElz7
	 T9gDbBjaQohQPb5nfDhGYV39nJ5pLdVsYqfxh4RG8zEVJ1b7GmIk2I+lN3W64lz3Fm
	 tuv+IkOa8Vjiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B70BC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574049636.7147.6254078444236123808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66811897812dbe2df44dbad92f006444fc2a0890830ad1d246fb75f54baf257
Date: Sat, 20 Jan 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705740496
