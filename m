Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F10D29C35A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776980854; cv=none; b=fdDpSwJHwsqpsvBCq+Hu9BaOIzbf2GmgCG+lgmmuEhBHU7sKE3wjnPiifNykPQKuCGtPMb2C0nafjTbEUjmfgM045Nc8QBVm+B1ibJ7LPYtMq5VfBLQYTfYUqsZWqgPo0WIIKwHVL3vmHclQnX3ZFm/JRlY8m3oVpJekBvxS7wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776980854; c=relaxed/simple;
	bh=YLGLBdGSGlC9i4Jl43bOsMlpQEY03b48JltXei8qQLk=;
	h=To:Subject:From:Message-Id:Date; b=mmJgDi59xUHPGpvUQHdnf46xOVg6G9+gLoNnQ+nPJzdEDXpzC44JFFAQwe9Y+SjChOWbR9XJJSUtB2VldQ7z9NjwZYL8E/dXN7WmroJLZERKmrd+P1xbju1oRdp71OFTbKvN3GFML7hI31ugi+t9Itxm7PO+TgoqZHsEs91SLnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLlQUB5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLlQUB5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00D6C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776980853;
	bh=YLGLBdGSGlC9i4Jl43bOsMlpQEY03b48JltXei8qQLk=;
	h=To:Subject:From:Date:From;
	b=QLlQUB5pWGqJ95ZPSmAXkYGkzb90iauY8NUUjZQGghT+LJagkCIJ2xPGuxpMI5ZdD
	 4rfSFSMp18UjR2XTeaCCw5L4ImWnmYIEH2unZkW0b1j6W+FaGu1EbseSdFCBU30pRx
	 w66jZD1iDcZAWyYLsGqNjnNFsmVC/J7ntKrVTaszlz72e2jR+N5YtTxo8XKphC7ccc
	 addGVjhHSmezE4mLoo05slaVDMvoJ6+vjYOEXwBl4+oQcmutbt3NjzfgLZ6Vzi+vvw
	 g36z+RSZu9nAtTxf+XMfebUEBS3YcCHvSRmLANj/w76Pz3/eJhTvsSLItPIycGgXGO
	 SjaM7WYtt83Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AB9FDEE4D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698085368.27194.400600014976526421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e20947395df5ddcbafaef1a322d405843136b726f04b1765d93a929f34fdbf
Date: Thu, 23 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776980853
