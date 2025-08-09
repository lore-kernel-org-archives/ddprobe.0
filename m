Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDFE221FA1
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754699393; cv=none; b=eES4Ag984+9I9BzpPFJx+jB20X8FSRvLTGHVBfgg0dp9k8k3TWYBXD67mIM1bVpGV71r11xa+bPo1Pnhl/RM4x08sHn0bqxkK8KGJuAI25a07mNwkY9KTmeTsVqCBiODE/cHTZSCluGq9iR8gcPGYvjJTYyCIOlzFOfIplSGYZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754699393; c=relaxed/simple;
	bh=Ot8NjNMbnXo0hSt6863E/0K1PmJkgqvP/os3bbyWk1I=;
	h=To:Subject:From:Message-Id:Date; b=BSQyZOfPU9CGmMyejob6HsV+BHLdJXgcEFJ8m7WpMVULFDCQHkk3ulBuedmMoA9MwYbl6SiiPdJ903u5lz/O2XGP/f6e/+YzlwoUnrW+BCMFq9crSYa+dAB4//SvgXUZ08k73th8acdjDhiZfJVt5d5SpVSh+sryJ2comcseoow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeGZuLRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeGZuLRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C3C4CEF6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754699393;
	bh=Ot8NjNMbnXo0hSt6863E/0K1PmJkgqvP/os3bbyWk1I=;
	h=To:Subject:From:Date:From;
	b=HeGZuLRXZBJsJo0vYiECiA82++lz1IzWjkygh8CyiRYSvjdl5Y2pUhQMvc7qhYuXk
	 isuhpHCQKrVbioRz9QJK4/avgcLy04Dg29QfzVOft4mIgipv0OoNRNcss0pXK2pXIj
	 PprpfymhSCUZoZgv/TFIiUCz+IEiQhuFPkUp2a4Ux6zK+unPfEGgzKFlgqpJsY9o+D
	 MDnzUTr1teb60VD2/mi8OEwjQYI6KNjc+fa07R19gxGBUzkhP2LFw7+c19RrvIetx5
	 2cm0pA8lW4rNF1DCVryG90ti2uqs6xhH/0HLlYNuE6XXOJsHaL6I/cmtgbjQ6uKfQQ
	 lCAKXOCKNzVFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9017FC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469939358.17943.2169083300211063621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1177046e3ea25684549c234c27bd74fe559c4528cf179b04f9d665b94c8e39
Date: Sat, 09 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754699393
