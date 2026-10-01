Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3240539D6EC
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790856637; cv=none; b=KEk7nJhb10KnCGPqz72vHcI31UgJNl8+QNOCJjjaDw7fCV0Jigs6PPre6fEiyqbqxsdlXRxMvUV+ua4lqTaQ+yX8PUP/vdXZsuocsr18pXSlT5TqLarScrYkzfLg166CqNYT6/5TvwgjJnuJ37Uk6ez6UGkMyk2JdpGR5Az2W/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790856637; c=relaxed/simple;
	bh=NHxtJmileWe8irid6nvmw2m47sk7uNndYJ3SVMQsIHc=;
	h=To:Subject:From:Message-Id:Date; b=H4bBLLkyoEz3YYWz7rG0T3JkfeXYGa+LkANTMe1brNEmzfa80ciC+8HTbo2LNXeaseyw7tJqUbB/MVb3744TlsxYa38BHBZ6rJzsspZp5gK3rfMc8lBo2+hNJShNXs2u3etHuIwGE2HJwGuTb9eG2IBB7VD8a7GCTf8+t6IHXyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbQrqKl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbQrqKl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA642C4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790856634;
	bh=NHxtJmileWe8irid6nvmw2m47sk7uNndYJ3SVMQsIHc=;
	h=To:Subject:From:Date:From;
	b=KbQrqKl1zTlChlFD739Ls76rJ506g5YwJOeolbkXt7w/+R1eOEqA2RsLovHNth6+I
	 m1AtvdOwoJEb/OMPmJvldYT/lCbpWoq8PoL7uo1ZK/zLpjWa1Y1ba73+5Ta+4WxyRO
	 F6XOCzXy9Fw4ghwkUmFyNlfkoQRD66uXnup2NzZmPkhlMvRbmizz+Gqwpz7EQgR9mG
	 qzRRYs8lRNTft6GQgu8wjI+L1oFnlPobJ0TGq68m3K4d7z/ZlR9dApo5c8pbgbhPbO
	 Yg6XTgGUTN4/DSBA3T25s49DgvQKNA2u3KyPHXH+JgJ8bNHijftgOmPEat5qNUXXbW
	 QWXH7jaQ1sM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BF2CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085663374.7224.5963633110949240827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b161eac3d4904ebb381c2690f3af68f5030e5f8f8045fb2478e5010f6af1f8ea
Date: Thu, 01 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790856633
