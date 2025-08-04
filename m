Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FBE23C4F2
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754313594; cv=none; b=g1CG7nGj+H/IT8LpXoUARAEHMBrn8N6U2VU2Tehd/NuSusCiK7ErVe9nhXcALeM4GV44bYVmVhz7AUlbH7+S8Ovi5idYRixoLvdQgg13BNlQRKt+Hqth2biOlchK5eJ4ZAE3x/IaiZq+q4vErzH5a4qs7v6KB5g95qij9aLC0LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754313594; c=relaxed/simple;
	bh=0b6/o+FEboXtHJCGhYEc7S0ks1MVrJJOJedrE/aTC/s=;
	h=To:Subject:From:Message-Id:Date; b=X5nUs1MWr0GkOGRNaZQ1d0YVNwa2rgpGtM1BdYt1ZoxSm2g0f/85J79tDjKfupViHwH0RHSijqxX5Rxe+0QSgb0bK1dsKisVIUh7ToC7EnqOCiHJ8FE+Rp0REnjMWfMapGTAMxLSqyaN0X/OYDUuIS/iQ9vC1VMszt8MgwiOP64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVtGleW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVtGleW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754313593;
	bh=0b6/o+FEboXtHJCGhYEc7S0ks1MVrJJOJedrE/aTC/s=;
	h=To:Subject:From:Date:From;
	b=sVtGleW2WdGExXA2HRUodhxrR558QcmaGZhfgTI6Hd2AVicgvNU6+GHWiY0aJhKH9
	 0l5BBi9wkP1wRCkuMwF8JAKwehIZ6HgVHCiNcTB2ZSxuAMTMTttHHs86Pwfa1Bj/GI
	 YiHnEJVfeZWXp6Ntdymw24bd8+SWwcFC9dn+ijhZ4OvSp5wlhJ+68X1YnugdLI9KLF
	 RkuYQH+oJHxtCAejsY06GmjxKY3rLXG4rZ9ogdmH185iyyWYgPxkhiVbP2BPCiOe89
	 gKtqywkPEzuf62uFnbe7sSGy2VlViY+GSXEO9z1WO7l91fyPLOENrEhq/6jgGcYIP7
	 IAYFfILn9ldoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC7C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431359357.26969.4674018393340226852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab7e436074d84a30ea24a88802fdd9bb590e381358279d96a0b88a65c143bfd
Date: Mon, 04 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754313593
