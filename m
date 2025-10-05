Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B76819D8AC
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759657794; cv=none; b=p47QdNQRSNtvBjZevKpCp4NsVWS7P834pK0MsFPrDstuJJY21S0clUapcJNsryjUdyFYRbVetbI4OeGHljVEzYk9ZSoKmKWsGZ5g87sZTIt8C288skDqNQGAu/Zn1VXQg/ax7mjoqIPaajjiwmKq4EMJ07wUFxG4vzRgktmRiZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759657794; c=relaxed/simple;
	bh=GuvC7WbKmPADnQfcA6/EQUitis5eibZFyF+jkEjj2lw=;
	h=To:Subject:From:Message-Id:Date; b=ISwr05pFCF2Clc5q8b8v8yNMycuOc0Rx9x4P+d3LQLgS2+8YxCE/ajhDAgtDRsQL6pk3C91LzSf6BCxne4RqVUr5+QTrvaVrRS/pwOKYvzxQSONeIpIedRYrt0UB6RtcmHPnrIxiwwOk4xtPAKlacMI7SJOoRUNNfxVaD9vVnXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ7KHUWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ7KHUWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0879C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759657793;
	bh=GuvC7WbKmPADnQfcA6/EQUitis5eibZFyF+jkEjj2lw=;
	h=To:Subject:From:Date:From;
	b=KJ7KHUWnZa9vf7IVQlAnGN64EBtTgNTjxqCUdqMDdJIec/VQY4KpaqiqD7x/kPMZC
	 WmOdJxnqyONjyi6VV+VA9DcfFm0F8+j034/7z383GEL0ZZ4p+DifirVeOkEHrmPwCb
	 j7IC6lWojPE02yWYnfNBqk/HI1T6RmjxY4utXtgPqz6bG7TNU2UEaiIVJMR5SDFEZS
	 A135JmwSYKCThuOeAVAJOBXpAJUILlSkZfCxiGGdPIaojAxlWA7vcxPBbdk1ZREATm
	 I8+hyKFrDe98zRReuNW6Sl5ET826Pv7dc1djd8ZrIlqx1fNZKTNL/nFSH4zEuIaJzj
	 dOElntx+Jq3ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E40CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965779357.9080.17629283737613532083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadb4317274f8045cb58ebd25bf35404d306de502d0eb90afe17b0656cb09e26
Date: Sun, 05 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759657793
