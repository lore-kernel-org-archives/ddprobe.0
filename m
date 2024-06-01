Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838CD8F6D
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717213463; cv=none; b=hkzyVXsJc693S2lLhIob9xuPyvw4Jn3yU/g6H0y0lcHzpvBkS6xfiECxDOI7B1Kn4mQ+j+ikwg8CWFSajU9dTSNij6n0FewjqQ2eAnwI4vi2IyInyw7dkEFppFik0b/ZB6kqfW8oqje7Vh10vMR4FzL/59poBjECeSJVxViUqXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717213463; c=relaxed/simple;
	bh=GFRmeHm5HaEyVZ1jVDdJ7H+07xwJPJbG28ua1Nty8iU=;
	h=To:Subject:From:Message-Id:Date; b=C3pX3zWtv1Tnv36Uddq78NBeUcroON/7RYx0/za4UT4WoRx5W1N3kbvYET2HRwhFuP2/1RLzyQaBn3Ie+T1l0RWnZACwZCWCMpng7HIkj1fVIM/xRlM6I5089/t9fuasfLrMgRhWUTaA5vLQLRLLfIDvdFhgDtblu2SmCclFoR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7JxgYhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7JxgYhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E590C32789
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717213463;
	bh=GFRmeHm5HaEyVZ1jVDdJ7H+07xwJPJbG28ua1Nty8iU=;
	h=To:Subject:From:Date:From;
	b=r7JxgYhA6LuSzErGzgUyniq/j35q9VXqeqeDLCfrXIKrfkguku2rjJ6qLUjWJuNnQ
	 ng527NAvgjEWZEX1Kh551XRZPjslGc16zRnbjR9U8S0A+ZL0g07UkfYzwk+D++GLEM
	 Wh2nKfitr/Qzo2qUnom/Ai6uAChIRq6GlmJG3RWK/viHwwjGxXrpdp6DcCBzGpWLoT
	 fUHj3E7NmppOyCNxWuj9lX5wPgrACizxQblaapWsaQz7wGXc1OvKYmqmZTHGA/AsJh
	 nK1LSb/XOX256Ik1k9JmjNkqoVYMwkIDFu0DqZYWBHcy9T92ULf3bSPdYsRHMvN5GT
	 nMD/CFAmUj9zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4ABEC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721346287.1265.5412968147579451220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a264d9bb534c26442e84e8debf0bf046d6b429ba8b53b77b3438e7d04e8eb133
Date: Sat, 01 Jun 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717213462
