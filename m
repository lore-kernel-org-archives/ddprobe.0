Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D353F267B96
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744211393; cv=none; b=ZBdvpvIhjlh3+rYo/gDKiTEsiLNnimSCpc5jZSM6NNPPFn2kOfDKp1PPkmlk/n0Yb9j2gQEgynzODVivXO5+YD+EnXiGnlFZecRJxo6J/feKslkqUH8X62PGIAhD0M8CzvVhhSk0Nupn8NhEQUra3wv37lSxe/eUhH0A2aYWYFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744211393; c=relaxed/simple;
	bh=rYf+TsI3tZ9ng4ap3n1+Urz4nkHiNMmcK9mYJqEK5As=;
	h=To:Subject:From:Message-Id:Date; b=oSNfokI52k/XAXkRM5N742rJZ4YedrI1tMvUWsX/udcvo4VfOLVBLWDzrskGQUhtcfGaNjNxQtUQlncTnMbsSKbYKAms1pWnSm+B70wWF2u/nSeUXODE/SLoXoFzSd7rn8ZtI/pkxms6cx8xH8vMX6aKn28tI9J+fSHGR64TzlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hz6BN42D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hz6BN42D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79FBC4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744211393;
	bh=rYf+TsI3tZ9ng4ap3n1+Urz4nkHiNMmcK9mYJqEK5As=;
	h=To:Subject:From:Date:From;
	b=Hz6BN42DmhxdV1N8R2s0nIqMfpfKud2dTe6BPgejnIOdBRFWwm05pY8g/xe3fY3hR
	 1AzA44jO4WCziFjl9Q64bwT/ed0IapoRNEzQQG3CjGxQEXG+WR6p3Yo9HynmpsWqeI
	 iQJPux2s4hm5Gf//j2LzBpO/zhUeHJc+4A9WyvqzjKNIkEaH2wek6bXQWEDRBT+Xrp
	 yI7b/5Pk9xxmH2ig9UrJZyT7PZvfewGQeJLp6GgP/qZbhOT2O4qNihtkw3fHkQIFbU
	 3RoKxNZjOraWcEX0NCM+amQ0HUNoQsztx3HgompMi/YseMgGSFOHv59mwpzuGTgDoi
	 MvI+nGvkLVWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91725C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421139358.10793.12275294544709518487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f70742a7fea3d46e4a324fc9db12343c8bd0e4668177532df259fe520dfcb9
Date: Wed, 09 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744211393
