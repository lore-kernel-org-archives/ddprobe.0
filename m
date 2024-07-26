Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E53E210EC
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721958954; cv=none; b=nXh+OaES0QOoXq8rcweDAlg9QhYQFZC6npM85UUW5s9eSSzm0ynoA4huRYQ70R4JxBawVJ8+1rezNy2uLSH/6dhJB64yNiMWMsGRR+OYRPDyw8DNbUYu4MBcKl8WuCbRhxydm52Xr7JasHuM9VADRJxpLtgEaLqRavSnJw4FYdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721958954; c=relaxed/simple;
	bh=YhiMSVDE37LZZkWTAC5AzufR6O64Nk9LMv0aWhwvukw=;
	h=To:Subject:From:Message-Id:Date; b=ltJDvBhvPtl1uWNChqEPRWpL9G1a9zL7r4smJQQOLyXwWZ2AySI4eUV2P1SlzqQZ54iHep5qk9rSzBvLjkgiikYC2oHstFJatVmgL5wKrHOm/FvR3Rt0+O2pjNcG8VqXNHBPJEr/gyT34wYvvl7qOURH3/V/cCA4ssb1adUfhvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8e8L2/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8e8L2/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF27C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721958953;
	bh=YhiMSVDE37LZZkWTAC5AzufR6O64Nk9LMv0aWhwvukw=;
	h=To:Subject:From:Date:From;
	b=A8e8L2/AWCoH4n+Ry8W3EX4VjpieCcRcRGry17nbL2YJneNiZNQSnOHY5WB2bQ1fN
	 dsBOAKHblblvTZyFKzFw86qoi+R8Z1G316f6czupqtkB/KQ01xj6CD1ksQ9DW+OInF
	 cvN+8c5VwmGAq1LlBfw3ZP4UaZGPzbFEbC6EA5wfGKi7+B47QrRDQd7uE3Kobkq+le
	 iVOoWmFHW8Ld7fQdvHKJsjOkkMpJ5mndlpykXFzNEEhVVLGcivrRZllAqcbVHUg8DX
	 sJaV1hsEcdkAZ8yknqaKeXL1MLSf4ponjvYRJc6BJy7CjknRhEOg9mL+xz1ZDMxFDO
	 HHQbX9WsF4XAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B75C3DA64
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195895362.32521.1609637303206467460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6224c9be3ee0f2a7490b8361f3748a955e88d5c99a5c0f55929d9d29475355
Date: Fri, 26 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721958953
