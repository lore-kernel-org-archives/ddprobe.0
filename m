Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244D65CDF1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763900514; cv=none; b=UN6lBQ+QxX22V1XPeLGT8vnOl5Dtt641bWKia/lNKJ39ZnE3tV3eFqrf6c0ryXI8KQMLOUxLAYaiQcFZmH/2qDUwxr294+zjFkhsEaAiHeVuYZyv5rgsrIlMZbLLJZkur3GxosmlZLlLNpfJLjSY7+UJAHV+X819Bkbx5ffNL1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763900514; c=relaxed/simple;
	bh=46YnVSZj8RaB0x9xrT+NjqtSyEJi+rVeG9xr6iKsdeQ=;
	h=To:Subject:From:Message-Id:Date; b=fH4sZpK1h2GgGsv5gp7kAxOBQryP/XUec5VMyUO1X58brPRDQN+50DVE3MrMz5DtkjZJopft/NGetOmUwSBkSC9SBWjtLTJinf0DIp0N5jpFKvJqAwoPfnYRNxsFKfxJGa+5OVM8dgZQm7VM4FVeJFUwrP/cndaNf1ZsaAwfdIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUbBrKN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUbBrKN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7843C116C6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763900513;
	bh=46YnVSZj8RaB0x9xrT+NjqtSyEJi+rVeG9xr6iKsdeQ=;
	h=To:Subject:From:Date:From;
	b=XUbBrKN2d6gG8A95I/1l6LdgwaOas2mY+LWqOe6Amk8hlj5U+8m2uEQrjHOpZid8F
	 29QIZTvwMVoGWheAPtSNT4xjGgKcXpqfQW17+/0UfadLHyH2z4sNNH1vpf/Y+UAtuu
	 W1ffhURFOrWWrQa2hn3HUAo1X4vGuvwsMxAeJNEqfARBs8BAeE4slVWvqUbUwq+GAq
	 7naE+tFzuCzUpNK+rrVcMFn1qCaPxHImFaQpx5B2uXv3qyspAZrrwWp9L/APS7le2R
	 SLINGvAH0Nw0QEkwmPSQM20OaSc4UfoqxBpEbxcotixJCbznsTIJCsdOrC7+JPeQcv
	 SLWo6c9E2xUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92628CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 12:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390051359.12455.10937870270032545670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfd0b0e17ed118fb477fb770348ff21458e5d683233402f82f4fa9cb0ac24ab
Date: Sun, 23 Nov 2025 12:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763900513
