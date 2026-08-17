Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EA13B27C9
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786997434; cv=none; b=paWvEcjCh+y3o05QGUGIRpWkiYojotnJ3iNMXN7DRUyBKMu26HbGnzAqFaLHC91grQg36eeAI/SHAfF8taaKkgTwWsMWZE/NixFrlunzS/z//eShLkkgJB5vSRDL9TPWBdfuhuTU1iaARNrqJ/0OFK1FYvq2/z3x/joPA0A5lMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786997434; c=relaxed/simple;
	bh=QXc8F+IHbYn+DdB/K7uGOkcX9zy/5AtWWxTk0s2Y/ww=;
	h=To:Subject:From:Message-Id:Date; b=GAf15YuS4NFcT4EGd9xr9VmkLrOcNBPy9bMyyL7irRkChKWfcWXx5rQ+Evdl4UtOVnLaus8HCOYui6620z/eZLGeuQcBLH1osP06OJ2q27fgaOY0t7vUg7Dcaj9jD4voF9u6aaEF4nEy1O8OZT2I4SKuZ/QQsAkSPY7FbAyaYyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwoeTU0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwoeTU0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB01BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786997433;
	bh=QXc8F+IHbYn+DdB/K7uGOkcX9zy/5AtWWxTk0s2Y/ww=;
	h=To:Subject:From:Date:From;
	b=OwoeTU0qdNo0vFhJZjIVwVlmwRSEFDzBhTeumiNOUxBnKyBawZ4tbfLrRjK2JrDJL
	 ZJqVW6Uxmj+kDnn0uds1E3ia432PPj3cLnPvzqXkVjdZf/m7w4+PrmfvE9S1q7XHms
	 athnlvDffMuBj0X215s/Sfcg60RphcP2i3KQiysxUKVgCow8N6Lu0YiGLV4X0mDbsG
	 GwFpQX9S+tvgIVaZQUiw12oLyX2beN9oiYwxTpuLQDhHKXivmxjHweIDivnEDdfrPB
	 tjpWDwV5IluDwiUELlSdOdigvLfZwnqtWR1IqM/wWCAmZNawKDTTzCjVckSN9LHWKw
	 DZa3arHj15FiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F0DC5DF7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699743373.27899.1411313071242682938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b749bb55af2432f94a5ae54fd72be2aafcfb7f76f9cb9acf18608071b659db54
Date: Mon, 17 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786997433
