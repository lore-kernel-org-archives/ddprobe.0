Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291E824B22D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736622954; cv=none; b=PWltXpvWYGBvBB76LtjIjgkdOJH/Vsk3qXXWipL9dyPxP7+5Hn+8e5wRxjAuflh1/PB1M4pwzkDTgWPVM0A8WjwbvxrYQPpe4n0pEy3ICzsIK7gH/h80TAY+aNRucckHJP+GlSWF2XOZfFfZDFkKitSnIab3yWhOe2maxa8j3GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736622954; c=relaxed/simple;
	bh=Iw35azKPEmqyGUpN0AvVp/RD8jTrywarE+Yv6cOtKfo=;
	h=To:Subject:From:Message-Id:Date; b=BT6Wz2NWB5R5Xwd4HZcznjPF0PiA3PIq/iQ6bNk36yjCc/mf/WXX7ZpPtHct4ejxCnaCyUw7XoZ8IUhMjTHE3gcyMYwC5v9hfS7fcrt0rZuBlAusl/hFJow+R/AZzjgS7EHRqE6mUoJxm4TFx2nEXPcHYn1tAR3q/AAf/5nPgaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOkOmx6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOkOmx6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0223C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736622953;
	bh=Iw35azKPEmqyGUpN0AvVp/RD8jTrywarE+Yv6cOtKfo=;
	h=To:Subject:From:Date:From;
	b=ZOkOmx6prUdxt2KW52qyo28pEhQzl52GgsRDVckMf4UKwI0G87HszDZW1Kedj5DgL
	 CJRIQyY40Fo6p6UKe5sw4RGf4Tf/NvdszCsF5alKXJ1XLMFqKt7zUkt97WWIJsUejr
	 csoHOe2vP9RtRq2R2p+BENOx0rWQZOBIerFXoU/jA0cP4Q/1MjoHytbPi47p5o3Fzd
	 4pJASP6zJi2XfvDJCbVDXDN/llL96KzNlukJCsOA5cLXuwNF0gg2eayHEw6jRbBeBx
	 8L/+y8keSsc4a7Umgl+S5/sTQgTdCLwbfJ+vqbrPrzv4SfS5SCgdutwWCbC5dtGSyP
	 7vskkmy7wXk1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A49E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662295358.20574.2954863014812535102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001954590094808f3dcb9143baf20a80907f6ee70aa98ead6be54819bfdec3ed
Date: Sat, 11 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736622953
