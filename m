Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109FB2D2385
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778048254; cv=none; b=UqyZuzd8z6YM5c81wVOj3wpjRpC5QL7FQ8oop3MDZXneARD6A8a+CMR8V+3iSm2G9BEpyyOEEawPSPVOZTSX3eAifuQCJaIzXX55mM76R+GAbuPSOx/xZec2F0+++MUtPueZesTomuxWJ7UVkytfeDtNppSzW1PkLMAgK7QLPqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778048254; c=relaxed/simple;
	bh=Zhxhk9kHlwz215euVyTdIpS4/cLqJ4aE1aR1v4/Ym/Q=;
	h=To:Subject:From:Message-Id:Date; b=NJmx1tMhXTqYu1HxmZsQXVIP6/19r/HOwM5hKvfaXBuQrYUQVOfmqxaH5c9ZDKxCRsJwMCVzXZCmAaIz9HcEjohAIE7391qqNXxEi326c95RXobn90PA/SEyTkM+V68h1Zicf8HzgT3N76I7CC5FlVXMJawVA0wX92BDk0W9ADE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6ZtrMKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6ZtrMKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEB1C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778048253;
	bh=Zhxhk9kHlwz215euVyTdIpS4/cLqJ4aE1aR1v4/Ym/Q=;
	h=To:Subject:From:Date:From;
	b=E6ZtrMKZKCFfn04LNrD2bNqUQnttYJCC1Vj9y9kQRqYNFca0HwvIePsBuuzPaZWTP
	 Cvm+SOLABmDoQK5gC8DH1m3p4bMl5lKEU3IaaHnm3Q2rePsT7EvujDQ5rKgZnv7cI0
	 DDhkLmZpcnuuyhHAm9yP8FK0G7E8u7bo5D59zFNjXxQWLPoIJDCu5nMtDqNWZto70D
	 cZPEho3ZL/IycTyIpUOM/OOVKScf8oztmPL1aU05csyb9J+lPoNtQlcvQm88/6wjyL
	 wTpdd6Dgw6yxyzWTzimOWMzkzrSSPd1Ny7wGUhUG/Kf1cO2aRkHPBi9QNHMGquRT3f
	 9U62E2nqc4JQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCE5CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804825368.13270.15521828227190460328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee722b5d347bf3e95f1c86a115a6dad18ffa27db50281454d36ec901889d3494
Date: Wed, 06 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778048253
