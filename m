Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD1F291C19
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754956794; cv=none; b=SSORsIurU+6XITNvBX1IAnQiVCkjI5lbAjGAxHRWfSMbM58D23hwaqk4ueI0ed/2he4AoxO//9Jr+taxvdmB5XDXv1zDXEpbIsov8GdjlWbHce6qgngy2aVThvxsy4YWYCUK2a1D6CY+hZYSfQ9+JoIWZHonkwanPJ9rT1/Bg4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754956794; c=relaxed/simple;
	bh=T6QvRwIEJ3xgzmPmFxzrvQh7EJpLzzpatHKojqPxS/8=;
	h=To:Subject:From:Message-Id:Date; b=NWqS9Tat98uEQHFMRKRGc9vRGtxpUbGb6smVD2Xyw50+OAUfAT0LtPEeKiRNdnptX3q8RVXtCzOy/fcDebB5oEggt6PLqYf97MlNJB/8/qOMtTtvUoz8QQVQ/J4uOsxlDralZTLRCCksNeiRzui+sEpvUt1bqJkRCNk+YHVSqQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Waje/bMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Waje/bMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4789C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754956793;
	bh=T6QvRwIEJ3xgzmPmFxzrvQh7EJpLzzpatHKojqPxS/8=;
	h=To:Subject:From:Date:From;
	b=Waje/bMm+kg1v6WpHr8N/Qt/BOG0rDMC/Sb4U8AQZEI6lx7mOzTPTiPheDjd2gSbh
	 LuVdLp4cSaic7xAieFcQqJG7VGITgwibpA/uaKkrpES6ld8AxChRzA72fzPMX1bGLS
	 rLg1rQvCwhXlxSEa/HpvtMujrvfNPzSKLg1JCBE9PGfndPfJqwVG/btlPiJ1AxYLpO
	 bAliH4Ex9v058rrr0TxRtS9oBhjOQkRJ8KqV35eqyRgqeRQ3qc1vGS1ZJVfWqkFQn2
	 cuGd2csYH1VGmJ+wYF29i5C5hc61BCrwyY9yrU7bRnzuGYWt65nDihFovxCj/2IA3x
	 hISm3waA3jIlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47E0CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495679363.635.11169252830395180306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720c664114c1f081b2740f16c3ba3960cf3c1b8e1a7655375251650af408aa54
Date: Mon, 11 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754956793
