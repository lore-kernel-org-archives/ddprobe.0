Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A9D22094
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748708393; cv=none; b=tHMkgRDFl2i93PLKQChubqtjLPb7paePoNJONkI9kq/A3UDKzTnTQbmc/x8qBT7FzJLSsEsaKGWU3KKe/fmd+0g2MnleE/vBTUmhWrlF2aIwmlGoIqXyNuhOC1pkSDh9NpOiTMs0CRe23K2wTlYvzt2l/P11hnNUAz8stC2CtTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748708393; c=relaxed/simple;
	bh=dB0cCas1NEBWqvzb7LoaqNYeCgZRfk4MPzWTonP97AQ=;
	h=To:Subject:From:Message-Id:Date; b=QEC1Pg/Auh9gS5ndLlFJ8YNN3e3ar2d7bcbiyxcL/fCJRZRzMaiqJSWdLoivpsvDw+QaLM1L5AsKh44ddqNFJi8/+nut6rZxF0hNlcEi0GXJc0R9vO0vZy1NuzDR3XHY6ijNM2tjwAOuacuovCIbaXX+3Fo+YTaTGjQTUk27VTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMXQ6bgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMXQ6bgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7256C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748708393;
	bh=dB0cCas1NEBWqvzb7LoaqNYeCgZRfk4MPzWTonP97AQ=;
	h=To:Subject:From:Date:From;
	b=HMXQ6bgECT+TWS/CqMHiZ1H1JxrKGdchHv0kCu4LcSpnjef9zcWuFzdPFQinbZiP3
	 I4+sPXw8B2fcNU0RTVVZ8XJOzbR9Kt/1eRce+hRki3nfNwTdIH5bS5K7wxEclLJQtM
	 jnKA6ZObOBjbsw8kiAOE8QjxbMHeOSAcT7ufM2MbkklLq/xFb9Hh7NxPSFjorrtNeb
	 /d0tC4S1NnggLLNq1cc4OLSYX/itwTd4qe/BEWAT7RiqP0Jr9ZlDA8JD8PEZc2J8VE
	 JeU1vIAUda0wKE0tjoojueJAUQ8xQxtPQ5KGkqBbUg2MeFM032w0Qs6LB+5EBzx7gt
	 tHi7xPw1CgUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CEFC5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870839358.12586.14672747293274878096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de34d290585712d71d0a227e6ec8cee2971b4f4d531d9b9d29dd70eddb6a217f
Date: Sat, 31 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748708393
