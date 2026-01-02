Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6FD2C0307
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767353033; cv=none; b=EZRR/PyN/aFIhlPV/mjhR7OviRemT/3pIntvltiQ38Z+DHmcXPbsmA2qUFJj2+LKz4Dx7IZftDc3JQnuMh9OLLFLSeA0f9/8CAgQfcuLfV2EfzUG4wMGX+a+cQRB4eR11x/ygOpTJemvyVYXdFDjFkWAltw6cGgprsAQZOZ7eDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767353033; c=relaxed/simple;
	bh=G4FBG/oU6HjmhdVojz2D9cX2/kp80W7FDW5pQPmgS34=;
	h=To:Subject:From:Message-Id:Date; b=nto3Z3ehIf0WTqw0Ck7h7+M59eNKYYY4bovoQRZEs10mx74IHrurS/smYE1g5mqzVk3MBjDXkjbxflb1oqJQXW+cqGBXxIwmQryqh99gZ0U2JT8Spr98jwfxE/gblFTj0nY8+fTbuzzomwO+twVCiqY8clotU6ODtiY82MmhHsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNfn4SFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNfn4SFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEC9C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767353033;
	bh=G4FBG/oU6HjmhdVojz2D9cX2/kp80W7FDW5pQPmgS34=;
	h=To:Subject:From:Date:From;
	b=pNfn4SFGLxL+UPbLA8roL+lPP06LyqycENAKykxDa2Qa6sZqfB8USqwHYv2ZLUJYk
	 KtB92alnqEjmjP/ED8zFU2amhxCfHVrmmgVYedCKEofh7Mzj9wszaqA5Euja6OS9JN
	 fHc3aSQQXJSEi9R0eJxpAMdmOGQ7jrTO/vaILq/PP1zAz2bzYao7smX0Z4FQXsb1xH
	 JgXmlu0xodwUs33k3CoZYKnU4i7PW6ULU6IbwhvbZpwRY3juh1AHgctzcNAfz5+Xku
	 ogGeOaYwutH4LCP78wv6Dw7YTTHujIo4CpPHaPhUYJGXFwD4c48Q51RMHK+N3rgMc4
	 jhEBDkr5f1t6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50DFA3726
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735303357.25812.6595103682329120338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66de41795bb6ddac807684aa2a63de1ff90deff9e037eb72bfa8ed40e37e4973
Date: Fri, 02 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767353033
