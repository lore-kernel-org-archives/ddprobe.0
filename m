Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC921E51E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719671663; cv=none; b=npzIcOvnQLDLgWztlqtfazjjwvEeN2z+WbFA62/egks0JXDAfdPn7WfgDBtBP7ezUDePqul5ZvZogo3nv0FdsSjgRMozjzOJeEe3Mwxq6g+F/qbqjQvBQUf/Q80eAekK8C7x1hx/sAtWM8Tkdtso5cRfiguoPkGFYnSW2NQUlj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719671663; c=relaxed/simple;
	bh=GxOgnN5rZG6lqxmvwzQidHnMwIFS/OwOyPaauyzFs/U=;
	h=To:Subject:From:Message-Id:Date; b=LZ7eIZ9AEfDYtOFNLr3EmPHFPFpjk34lI0cuxe22dEnRQ2c1G+mC0ltllS0OKwRK4ucP/Hm9RM3aQwj25CTiaO00dSUpzo6iyqAvur4I5A+hUi+BLRcN3i8AZdW7itdqMd9aqO1czxLt4vbqrmEgpcoOcjUAhcKC0N/xumRriQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn/oLtIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn/oLtIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D78C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719671662;
	bh=GxOgnN5rZG6lqxmvwzQidHnMwIFS/OwOyPaauyzFs/U=;
	h=To:Subject:From:Date:From;
	b=Pn/oLtIeXpz7d3jfg1f3Rez7eBZAN5yxtCckkSSc2uFlP8QBKvFiR/eQXvG2XBi3w
	 xckNnPNeLl6CmQ+zkp6l6xKn/mfx8HHEE6VuRwP7NLiLcS3rfYE7WCXNlAFIU9+9+v
	 UpZ2Ae7rhBNBVFCeg9uyP/Kp1mxbznuA7d8saCGkqZSx2Er0ilFSXOmWsf87jxTnuu
	 vQk+dMsdibRn54JCGkD+nx79lFiOPobRx6moXVrmhWcN59LYl+/l3GyoUyW2ZdUvdG
	 R1lpS/oqxcyWyjZ1nDXW/1BhvQYOBIy3RsYQ86jbyuSo+8LlSJ3YqwsXROmKOul4Oi
	 tGYoUyJh72b0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3463C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967166277.19514.786863349310466782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b423a4ac68da106197adfe6ccf476c38ae3fe74ca207cfd9681657bfc1dd50a3
Date: Sat, 29 Jun 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719671662
