Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDC32459DC
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776396454; cv=none; b=q+cj8xUIfV+PE3H05m7XLnfosSPEFQpq1s7etm0Nb0b6tBhVx4YTHqnrdr9Gph8NKZNutSwGMYY6uApyPJew62Dq63oOgaWw7E/dgoRLL/yKX+hkauxJeSptVBO/TiwjuReeK2WQpgMFBxMuhjDjLgm4YLWKl+cOYE984Ny3acs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776396454; c=relaxed/simple;
	bh=Jk8N9JiaBOWdpZPYNa49CyHrkus/1F1cNLgXhzke6b4=;
	h=To:Subject:From:Message-Id:Date; b=Ew+8Se9/syPrwQh0z7WnWxN8jz11gHtzTTyHGx1QM4+d8QJCTaQJy/TJ72OXLsDjtHaPaYDtGOHU/h+t/6hQp3aZoe15/kvAXWlyuX0bbF9kE2nmC1kONOOmhMw0HmcNxZjBV3+nmSbIhgyvFfLfaJbDdzIrbac5FeCThaklNdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnZ/ZOHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnZ/ZOHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACF2C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776396453;
	bh=Jk8N9JiaBOWdpZPYNa49CyHrkus/1F1cNLgXhzke6b4=;
	h=To:Subject:From:Date:From;
	b=PnZ/ZOHl2FXANV4idhmD2A12Sc+dZZ46+JuR7TiEfoKGgjPe1LZTxtROMZ+0MNbUU
	 VhV158harDFW3gN/nAXtsgoLeg8q/xJRLUr7nptil8w3JPRha0089CGUTplQf4T1HA
	 MAVVmiWSqzMYn4jVJ03Kkiouu8AdccVXK9m8JOmG1QCgaSkvjAZhaDfuCMJmG1CSek
	 BbUcjqurJ5UwnurGNZBRJjjj8F36i8dYYINvOl9bs9I2A6Gm/NUWDLidXqDJyt6SEh
	 RZ3+7ZWav6wk5d7bSi/H/n85jVYfnoNZv91OHVPB00IavB02JJMwSxIzlb+eDtxOsN
	 1lI8ssrqF3C2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B85F8E4A4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639645368.27034.9594471286911013604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d304f16fa6cb5c7855c4d819635610476800932179ba4f003e9df869d3f3a61
Date: Fri, 17 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776396453
