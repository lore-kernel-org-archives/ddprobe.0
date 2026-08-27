Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0EC388E62
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787845834; cv=none; b=uFTtfCJwah6VOLn9RTLqxhb+bv7MpE3oOJuw3Pu/q8R/s0uDNeHk/LwX17BITiFIefaLXNaJYzWnzYNYD7V9RuEu0RM8Mg0bIw2kncK+EEKq2ilcwOn+4mg/BoRYggHkB1qIy0kWtK1sBjfZ9Fk8HymXkJ8ANg495VYePt6+i7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787845834; c=relaxed/simple;
	bh=Oc/PtUYozhuODSbhMXjzai0DKOf0W8KM8HIv+KpyxHs=;
	h=To:Subject:From:Message-Id:Date; b=eFz8bQ54FN5ah7iBas0C08Kh7WUGViRx8Yr2YFTRKwFu6qChCZT02LjjxiNP3kax9AewGIvs4bOrK5v3/tJ6zLFn/ZK2krPY5uvF9bc0TTUlSn9pl1wLWTEBBgjc9ZN7KLkoKF8jwnlYy4ckNFCVXkyQjCYSKiFxrJIpCjWt5HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5sC3gfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5sC3gfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE03C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787845833;
	bh=Oc/PtUYozhuODSbhMXjzai0DKOf0W8KM8HIv+KpyxHs=;
	h=To:Subject:From:Date:From;
	b=J5sC3gfetmZDG0AAxIfMma6CVWYwNqyP+664AUkv4trz3RCEaVvQo7lg1tbVSKX31
	 7/004HJ72oeq90mg+VrDanu7uF64FvAT8SPSD2vAPh5NUJjlUptkTZkdXtCBhyXuDx
	 lXIrpt1rZ989T6tbEoT7WJZQlK5HIL0S6q/nFwKtDW1/mZaKGwx4Q5ry5sJCgS/N+b
	 B5yQ1gfT+m9UHMG/5SWnRhQioF688OP+ysKGmVF9kMEjvYdIKKIh4Hi8sH55p65Qz2
	 OhHE4WKk/vmWwFkyOeV/rKTRThg/qU+5BgSfaX2PQhHzC0faeE89p9GwctI3AaBDCS
	 6LofmYUWsaRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA034C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784583368.1594.172641379926855273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4443fbd8866d1c1f9096959e499543316ea67968304550a056be7a45af7dc2
Date: Thu, 27 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787845833
