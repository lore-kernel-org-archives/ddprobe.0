Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E80B674
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723176954; cv=none; b=iLqpr0M6spF3YCO+9ZFIRQPbEsruYKqUFqKrAbOZ/9ylX3wf60QX6Imjq2v41mCA/PL9ueWOWo8aPvay4roN/5kAglyknLqLPmh0dk2DiqV3G4c1zwT73zTsgUm0eKZbIxCOQpPWt+PGJ1UX7NBcT1PVNns4+mqxZ3j5QEIYQMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723176954; c=relaxed/simple;
	bh=W/CZEqZkKC6pJi/iGz8NOfjPv1A86GnhTsJ70/jyDOo=;
	h=To:Subject:From:Message-Id:Date; b=EgMZbjF9bJBLmyKnHWCO7qSUAmwYSfwPiwtz5cjNq7fOdWz4Sz6c6T7V7YJfXCC35XSgAh9JBq8QdD4995dbZVdyw9DeNqkvOIjcZHfYMt5EXv4c/sSnmZYfPu9HtI0Uc12hzCkoxhu2Cb9C3jDVK8p0+Sa8tY9T7TQPa9/v9oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+WgPiYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+WgPiYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DA1C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723176953;
	bh=W/CZEqZkKC6pJi/iGz8NOfjPv1A86GnhTsJ70/jyDOo=;
	h=To:Subject:From:Date:From;
	b=N+WgPiYkH36Xr6xrSB+i95mws9VLsKDDeQYcT8PgHTwt3hxWNE0NAz5ZmvQaBxjg7
	 CjYS/rw4GDsDPSCXoAMHje+vU6foll/NpgNU5txEhfJ7uHHHAoc23oAMq4YjLWZk0m
	 u2eotsc9qdxXEhnhoXxrsc4pFXTvsufpyj6OmG8odp8rHIbBm+IYs/GoF3NULriQ04
	 ReSNijjsIb0MUX5Se32hnHyUj2hNK54FcXMMcEfBYYjh6iwIQbl7WoAiJymXWWX7Z5
	 vawtXUPEIM3qP74sOGRqCXVYnlfnt+oncnjQTDcGsZ+UDCK9XrAocEflWxkpf+m7vv
	 /zxpJ2ROLc/RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D60DC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317695363.11245.15886929829089057889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985f0d5af447d8b40da8dd72bd5038b8f2ed6ad10cef4c7f978a3445747c668d
Date: Fri, 09 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723176953
