Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173A350095A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768762434; cv=none; b=SLpQ9JKh6ZOsE9EI6SRgv+Jd18blsO8N6mvkTqPvCL1PQQd3y269mM/zk59Ozl+pRfLYKsxc3S15y3vZmYXXB/ehHjcLQq/K4YjuYJy55g/BWNStJVaH3JgNe/PzcM7a0pIwy/c5uNKelQHjjNFAQj1GeR/SV/auKL+sUzstziY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768762434; c=relaxed/simple;
	bh=1+iM48fjFWooRw0XRl1xwYLNdTT3z2+wOCBb+97Ym4o=;
	h=To:Subject:From:Message-Id:Date; b=XbMMLMhP0OdMNsyHAky1SbTieb5QJ1gHDwsiBWOu6DSc/KUDQBERHV5OajqR7s4INMimWyqCelKZ7a4HtbpupnSd/rtJ8EdIUUe+yBxvE/BVxsgU/RaxAK2Sy1U62K/EeAUOlGYQQjvr0PNrHuEQ7MnM10SjI+CdfeIu6XtPfWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVdC1Wcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVdC1Wcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA95AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768762433;
	bh=1+iM48fjFWooRw0XRl1xwYLNdTT3z2+wOCBb+97Ym4o=;
	h=To:Subject:From:Date:From;
	b=oVdC1WcxPwuLdJXVZCb3oO2iArgpVcu+qSBITEAxNZG1WnTyvO7ItEA1RJK4wZ6QK
	 8KgITseyDKqzMCqdgvBv/YUf9wEVfptOeegCb9zmsPD7by7KIczAmslxfepWIkWk3u
	 Y9I1d7GsYZUVTCHeNRC7AquKW2l6QC8gGPT2RBBBC8vhX7WyjxMsp/xVsBeKSwIakw
	 EC0iVXuzPPq8UaEXDJ+8gYIBqqqk2026fzPlQ2yb3G8kEKf4/R9cy8mcTJxMt7AOq8
	 j3Tw644GXKuHtDmvbs/YtIyTpiVBKKFbRdT8B+ad68QnqZm9SjA38vrz+R5QKoIJmZ
	 KXHE+4g8cFXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97875C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876243358.19171.619694940427087504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07999b249311f68132dbf6bc3966a5ae8aece156b244bbd89592987688ff0b9b
Date: Sun, 18 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768762433
