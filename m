Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B9D1624DD
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746409794; cv=none; b=hCKLtHnZV31QEldXN18uGaAXGvzgIAIbAIiBcRaeTkn8SzxCIZ2TLosKcB9zbIWeLSDEwG8Rkgh3ZaZQVmIQra2AIZgLnq4U+URn2jPrtZRM1NsuNMprN3MHXX5Mg4mFBLRAisGdxF70K2X3yQkSnE6oDdtt0wn7yHUQJ4Pmr5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746409794; c=relaxed/simple;
	bh=tymUyA2Dj6bUsoYYFSFGh/Xyisnd6f7uyIVD5JZ9faQ=;
	h=To:Subject:From:Message-Id:Date; b=jnqfnz9/mS9HYHs/nj/iJ2x5WbFf2TTYx5KkY8eOZsblIIJvAdi3510lPq2HKoTDTfLTpbBlA2SamMA2flpWcKNwwYaVe7a+h6Lkrc8aRxF8h2PbJX/09/VXDRx/NNnda2SJZSzW9d5HhxESVNi68h9byZSAej4viR52rEgso4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4aoMGpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4aoMGpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746409793;
	bh=tymUyA2Dj6bUsoYYFSFGh/Xyisnd6f7uyIVD5JZ9faQ=;
	h=To:Subject:From:Date:From;
	b=k4aoMGpAlmJwTGkYeUvJsCYF0OyDr08WKdl7eLdLXS7S5GxmCdXAjAYCRxjwxcPiT
	 dLge/gL6g/EMYYQ3l8liMhzYUWe48wup00WnvXuu9duCNRajQ9UnMNia559Wvv+WeF
	 6Ix7sOG5SWMZuAQ6f0BAiylwot5O4kRMHvTfTdS7MhEctZd0yMMAMCL1diV4kr/Oh8
	 4+PKwfZ2R/sIhDW3tjsjqs+/kVsUXBj7lShnAtlpn5BLF1NuWidt2YEPOoxyD/ldGE
	 Y4czRRyg8Q/VuI5LdhMPZPtEMIO/fEQ3YLIEEJHLrHuEON8PcJ7tA5pCBygy8JlQrl
	 Kr2UtXkTXLoxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED39C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640979357.27552.6625192335556135552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f316544a37c67167ba4916c6dd404549ce98d5b3a65de20915cdf8a0c0837b46
Date: Mon, 05 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746409793
