Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7B038734C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295634; cv=none; b=n+1WA6jIjINK6gYDZPc+GEzmUyQHy0Kl2HlyOU1WTI2ZpChSAlowU66S8PZt1plV8OI+kw4+lMr2ECHEIqQ1NosKMFsU+Vw4kH42SQSVr6AGKRSTTl3I1faKhDn6GMtcL0nGnzJejKo1pcIIIN1pB9jYazKabzUnGp8aoOAO0a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295634; c=relaxed/simple;
	bh=zLnSjEj0hs9z4K6QSQC9S33YIhwfCFryiy9G8a/9Xe4=;
	h=To:Subject:From:Message-Id:Date; b=BD+hkfGgjh+GmNGfZXCkOCbGNEQ0e3K/6VUCEtRooXQAyy4CVIt1wH4ONuVdgr7pVHyzVD2x7i6KwbMCiO3HyfNM/ebsyvqe5xDyGfeXz1k5jt20lzPb2ughzH4G3+aGUq68MW9NMkvduERnzUkBk5NneWPuAKguPUAUyyWwHcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRYYKNy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRYYKNy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50C5C19422
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768295633;
	bh=zLnSjEj0hs9z4K6QSQC9S33YIhwfCFryiy9G8a/9Xe4=;
	h=To:Subject:From:Date:From;
	b=TRYYKNy1elStJ+xWhqcC/QOhG9cQ44r+zssgJ+LDW8W6O6evUeoC2KftH2uybpG/s
	 J5F7E5tH++6rzjYXb/htufxWWYLLfKADd6aggy4wqob/HL7L8+mbfP82h4cl427447
	 N7DNR161qo5v5Fv4/yw7lV7frIJck8gfacFkXo+5leixhM5Rae4VkMt/NdGoxOXy9m
	 FRUcZ55qSc2c2uJecgYanOP5x2PRzn93FFiXYUJ9klwnZuW/biFXHBDFRgEwFyM59R
	 kk/jCl98kxaOVPsjUrNeLrpdtGSFuMuZ8+Lj8OwksJfTxNdnD0z+jRp/YI8ftH2cJC
	 +QksUQkHaX2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F5D29DEF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829563358.15730.13624452238541120008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d16587ef3da855296efea54df314f2316bf45fc10cd697269c538bcda6962b
Date: Tue, 13 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768295633
