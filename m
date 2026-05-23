Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9331C68F
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779564754; cv=none; b=mdpE/RsslKm+iKzKQeKEB7y4ttBGjakWdqehcl4XG2e9pqM7VFLrUmAKSzm4msLrw0JHtgi/XVs0XRafRcb4A/XrRR9UCi9o+Qjb+926Cb5TNmVf/0ubICFtp398EAzmDxDWUFRzkYDqzyV/fRFfvgTLh/7xUoZmMakMszo4LRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779564754; c=relaxed/simple;
	bh=zPwgExYio0lUVe50UgLQ4JlFMPexzbLGTUsS8AD9gIw=;
	h=To:Subject:From:Message-Id:Date; b=fJHSy+ghr04Gm3tWXiE0Yc64d/OesQ5hnmr+TvpCv1EWqZF0EAb5H6S+YE4h2oaajWlPo32wMtmfBhMyUOTAxgaMux80U6CJHZ/IEZgWSu5Z3oq6/axT1OVaJkNklpFTqNluX+ioPPGsPFYNSM9L6oKRMz3Lznzgt84bnOH5qvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qyzo+Q3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qyzo+Q3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C76C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779564753;
	bh=zPwgExYio0lUVe50UgLQ4JlFMPexzbLGTUsS8AD9gIw=;
	h=To:Subject:From:Date:From;
	b=Qyzo+Q3IvM44/ZKuLuCdXDlFF6wKqNIaTCVW2Bgq4QDNyi0m19MHI2py0YjNofVUW
	 2xZ9cyS1PzwltJOy2vp49gzw/WpWAJUpjXD7PTrdLBlZy7Bb16/WBL2nzhxvToqwD1
	 BltPmxkydz0By67F0xkpq3YQlZRPiBi5ef9gtlMSP7NM33sLK4Ac7gLomc4kdnZvXU
	 VvjwagkDc/7R9qh8t5H8G1vvdA0CDhXXXp7WOcXtYWfXbJgivjnQ+9XPELLswMSwKo
	 MlnhCHBnAvqPT0Ip+ILUvMceFn7D65uVH3N9G0MI2dJZfSdim103kyFhelaM732lu9
	 q+E4nBon7lK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E79CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956475368.5190.12300167852492773727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0fcb424f740e31efe2100b9d3fc3e532ac562589a5e8a0d42c251e1746698f
Date: Sat, 23 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779564753
