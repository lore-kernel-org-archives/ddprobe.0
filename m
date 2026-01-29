Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360243783C4
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769730234; cv=none; b=MvtukoSb4q8z/EC/vIV9DAYoJNHpfx25jh5CGiQ68SgqDRmznjAoHfiexqPfN2cm2qNbnvyLSNtjSFmW38IfGbcXLYzu9vYnLC/naWDWV0+ImaB69ESKPFxEQkBpXAFT++PYDGTkzf8duluQCBccvuJxjyDnia4g2gA4CnnzR9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769730234; c=relaxed/simple;
	bh=h3+zGP9/vREsrnLONYkN2BG106MHOS7jSQGkO0RkP2U=;
	h=To:Subject:From:Message-Id:Date; b=fSiJ3nNluoWzz6zXI+ZPUqpWO/n7uyGKZn9Zb7RWHb5t0AC/wgr36RoQEpE71+/oAatq+0dVKJnKjkjYNwq2RffqYLkhiNtb80rg+iiI2+4z5usuEJS0cRKNmpT9CMT+BbqfuWcNQ8zSga6KZUCXLtjSBD8tcocmr5Uel4hqVtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbVPVE2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbVPVE2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E2AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769730233;
	bh=h3+zGP9/vREsrnLONYkN2BG106MHOS7jSQGkO0RkP2U=;
	h=To:Subject:From:Date:From;
	b=NbVPVE2yXfIDZ5R+9kONKp3a+aoq84r98xh5D9u+5Hpryg0JH3tQJn/gPYQyyRijY
	 /6sSECGme3Djifq8yoBBbTJW3QWvk/vZjy8QXv5sQw0SdaxGHL4TLk43Se5kSMuEeg
	 72WIvn55OtOgWA+awM0Jh99bdgT1kHfwfxY44+FvQ8J7AinA7xNF2fF2PBeso4TJoa
	 k5QIEHCtKp95N28cDtivmZnZfPaDm1KBhxP8sMqwUW1cXahUIvq4OAZ+/FtTqNYkJZ
	 iZnhBw+W7PU0arsqOHgSfMf+/VmTs2HDp1EM5OmnyFVWqR8TwOjOh9zvjNR7sQNZJn
	 HfdBQLDPsA2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38C8D73EA8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973023363.7621.5383451916292061295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9647a949178b49dcaa58330edd03c4f3eba5cd2f14b44e60763c153b6aed6f74
Date: Thu, 29 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769730233
