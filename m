Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36716849C
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764432774; cv=none; b=nWIUCk2s4zmPxJ+2tYDes5X4HNqKAB9lYBZ0h5ScuaTfYfED0hQguVs/CNhLq1b4FYj2FJimiE8nQb2tMHURFf6vVSI7s27hO1sSioFbwzvJ7qwQcq47w648KEilm64HgB/WRvl/McROQLSrtjPd6hgzkjJ0FvviK9iZ1hHID2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764432774; c=relaxed/simple;
	bh=GtpzUq87ML8yu+W11DZo00cBcBKXoDV1LkHFgI7j0kA=;
	h=To:Subject:From:Message-Id:Date; b=cMKoJ36tsjDOQeTNQIvowpteJa/FQs0tLtE6ZuOvztZNQ3zZjXwco0E8lFM3J5zNC55TObB5aNfM1/FAw+XRXbFTukfneqPGdGwQO/gr4GRGFriwb/WjgRdPSzwUTZKrIp4rRZqSqi+M2DwyOWtMPPP1YpDTyNN3UdmPJ0y9/H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTDAYj8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTDAYj8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FDFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764432773;
	bh=GtpzUq87ML8yu+W11DZo00cBcBKXoDV1LkHFgI7j0kA=;
	h=To:Subject:From:Date:From;
	b=FTDAYj8IdqQVWm3v+AEhQe2ajvjqM9yv73FBHycMGtq8gUMfztKH7iVP9/vkXMl2z
	 4RTzHWOhk7CXgZMhqGp7LVuUEOh0rxqm7OZ+8FYy+WZ9UclZNY4iZ5H9EnRcvepYSf
	 zONgN3Oo8Pf2yXkGdMSVj1H2ktGpMgJSNLpXviOdVncXKUV9E93B3ShsNojoFzqy2C
	 VgnP7xLKZ3WxkUDO/w0zu/i0QgOgvcykJTAsx1s8pzie4LQBDBaZ7rFtmpKjn+MdBX
	 J138I7Yzt0zjGQqYkU30jRBY8y3gaMZwP31a4pdEuAGo3uqdnbnR4kVuzkaU2kEdRr
	 0dmZGdPGiH9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075FCFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443277358.20437.14797385464860302991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9716ba630c97eb388ae0683629178781f946a9913ca14f79b14cc6cbdf4e2407
Date: Sat, 29 Nov 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764432773
