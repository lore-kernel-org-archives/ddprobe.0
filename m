Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3236F31E83B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784591914; cv=none; b=fDZmU5WTtrc8BiXeZunf0qkhUwWcUpxpP4ihCoQcoUScth7ALlgGok2s3MRDZyR50rzGojzwE919HuLIeQsxr5W40Rc/hN7YEQO+SgUY+4XpNAJKHsgEK2hadH94f0mQV3zNi2acIZGNm/5pYepdcQt2t+doUZwIfdOKE7I6FBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784591914; c=relaxed/simple;
	bh=uEFQy2ZQW3RKZ69IbEjk4PlcCzSG4mxgU+CVTx+s7xU=;
	h=To:Subject:From:Message-Id:Date; b=BLUPjZhwbqaGMCw0vnrWxPKiQt9qwt8fSYETvsLLX5xbuJHFeE4vGCesu/zvhLjBoPaJzLoBzIe4UhzapdllQg+o2ha+kFw5F8UCEW6jelKY1eq4CRYcXg8+lDWp4TqNSJUjXYHIkCFEUwZbW8nAZz7br77yUvHV7Hv2M31NaX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFlhYs1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFlhYs1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3231C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784591913;
	bh=uEFQy2ZQW3RKZ69IbEjk4PlcCzSG4mxgU+CVTx+s7xU=;
	h=To:Subject:From:Date:From;
	b=JFlhYs1t9VE0apBCNZgPgLA8meNe+f28+ikThhRzOo5/aKJx0Zbk/uHjrIW0JjNmi
	 AjBY+h5MCdtPIfOa/VKTT60LFx6p8C/VDIwWLiS2A5hPFw6xv9NX7/zSOzWbjcNBVI
	 Ldeob1+fMEbpkrXLKMEEDPIG8rJ0LU3qfdMF36ccuoaFknzXRU+qMXxa0VxHxye/MI
	 AqLITqIUDHrxGzUss/jy++BVok8spVQwTLBil5Dzd4XrPGTviTfCrB45Lok1EvAdTj
	 p8l9DcWf4Z13vK18sCEy+0Ntn4GDYIbnQhUPlGWSJLbpDPGHXMfZQGxZAl07ozxjrp
	 04PZgue3kkuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDB7C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459191370.9673.9453485010445433946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7ac08432067924e65199d596854b336ecd7680a9db7b6c74be9dd784500c58
Date: Mon, 20 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784591913
