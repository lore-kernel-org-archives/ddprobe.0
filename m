Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E972DE703
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769812434; cv=none; b=Jz8417oyO4Z/4L5uiLV7aUuYHU6hYH1kMPBVDeshVgv56lbo1QmvEkN60DFXz2qocTgCbUxbXPT4jtkPeheYN/lYtPTI/fz/8bmTxurAgvvhhquaEFp92IETvYTt9Y1C1XIqr5fF0L68ChXdakqq/qU6whxBmYvPGc9hrJEHhGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769812434; c=relaxed/simple;
	bh=CTVYcH5lRT0p3gkASrAek6BjicKp1d7FkIJzlp26e7c=;
	h=To:Subject:From:Message-Id:Date; b=nOgXXS4COhmz23kGzZvnKRFZABQZ5cXLThoVaf6DiNfEVu4AXXWQ/JWJ7oSIX8rFPgmVQDXIgSEMCIXfrt/dvi1h2wFiNl+ElYTmHruf7A2o6jCM1bP3/4F206Fpm6MF/z+pFwrFY1Z0ql/u/2bmYhmBpRvFwIdztDwx0EwVa8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqwYmX7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqwYmX7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0485C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769812433;
	bh=CTVYcH5lRT0p3gkASrAek6BjicKp1d7FkIJzlp26e7c=;
	h=To:Subject:From:Date:From;
	b=AqwYmX7VMJ6Mr5EOE5v/jtSncXFj+21tsFvILXyJy0BV9XVDLjWWQf4eRkSVfLOXk
	 RBhjywtvzvkB5oApuVyGN4mqsvyKXntVKVIX2wXPcdU60DcED7dzL4oprY19ygyLmF
	 Mbp2QsyaS9qkg7hvWrcp36nxBtVTJ4gfq17Z8bA3NLl5hs4GbjQ8Db2DIc3eL3MN7d
	 dcqtLyJcLuPEGhTqFnoL3dHZz5Tvwdp5qTwg3rRRWDpD4fR+pdVP/lUXeK90dy+iU5
	 ii0dbX1zj4K+Z1gsPV+Z3Rzz8eeYHa0d/PMzP1psaisuyBIcK9DgJhtMgq9GcVyAPi
	 okO+djh8DvXIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6EE6BF3C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981243357.32298.2263277767567521586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c950cc799099e58ea55d57d0d92cc5b6e918420f8b76899e3ec177325d5f7696
Date: Fri, 30 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769812433
