Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E7D242D60
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767201233; cv=none; b=cYRLat6Eladv/AipoVhiraC9Gk3bub1YZlpEmi/jSqyKQZH5WKT8M/T0TJGVbw0W8HnuppoGT1kVfkf+vm8jQXDMtqPK5ynoNdutG37ek8akvNscQhviR5clusFwEtMTY/Kdf5oN7SaOr1G6NBGw98m3f5+hhyzLvOjncDHEXiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767201233; c=relaxed/simple;
	bh=ZONZJ3ofBf0lVzOtKu9DMIAkLiOo+1mrWxz2TigfmGQ=;
	h=To:Subject:From:Message-Id:Date; b=V99NMtOcGkmpZuZH6T85KPWN+vB+/mJjAa/r4HYrasvHzPxLVk/aNURwE3NeXp8U1T8WfgxayiKxt4VUogvG+Af+qnBGTYAs8iM7bqN6gsxHIhpkKpqjKUc209tKZI87lrqcK/rWqH3NrDLBH+HdH3QsMNgWzPYAidsUgwPKAOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+49rExt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+49rExt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A67C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767201233;
	bh=ZONZJ3ofBf0lVzOtKu9DMIAkLiOo+1mrWxz2TigfmGQ=;
	h=To:Subject:From:Date:From;
	b=u+49rExthZnMiRszIjQtBd6bsU2DmeDP7KL+I+v9ZDw5k/mDVE3F4ib+0hE/ngvKx
	 od8meWrkn8uvy4mNiHO88MTT0Kmdwg/DgdGhHddXZXftoo24MOBy0Fxq11UlvZPJa+
	 Ja1Qra/5/AEefWvPyOwx1CJ+olpZ1OtbuQRmnFrS/MF4mg/BuUNpNxxkqp/8s6GCvb
	 jnOq0+R54EmpJhclE0bXFSH54VT9TbBBfPBZVBmg7T8n/C3f2RtDQo/1jL8VWq/3fF
	 DL2sDAsfG+OjmM4bDp8TbRb2aP7Hl5vRxypal+qUTMFfS4bvgdi0hJATxWOQZF2tx9
	 ojtZEpVicTT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE71EE645E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720123358.24508.5423004626813594342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91f4bff64ff9a4a91f2e2f5bf077a7250a47350315079d2ccc49013bd6caf8c
Date: Wed, 31 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767201233
