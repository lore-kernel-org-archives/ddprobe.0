Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FE034545
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749875394; cv=none; b=byeOE0JfoPu1fMcE/4rYRAhcCq7xBAVjpRcjk01IcaSowDTSw/LNUJBN0x0hPwSlh5PMRdfT2BJYkKh8Px0KB/rnOzr19SjvAHUvpMzJQUMJt9VmrDU2zbx9CkwJE5e4H+W05i6x04z/8HQ57+g+2rPObfNumKh1rHljHO4DQdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749875394; c=relaxed/simple;
	bh=veNMgLnE34Zo2DWwC++gb5AnZIg+Zyhip9X4vXhbggA=;
	h=To:Subject:From:Message-Id:Date; b=ZrMTbRJPtZMzH/570xR/sn6e1I141UR0u5w6UVvyREkY7cKNiZumOMnbP/HNh6w95HvpKzNe9T6m+xARdJOZc4SoRPVZYJrXZ6cZKjeyXwBNX2PhimNbuU3cIP546MK0WzF0dBW1wEvqJd28aAuTDLuysZNkazVF+lmSurtbvDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzfjLpHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzfjLpHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A972CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749875393;
	bh=veNMgLnE34Zo2DWwC++gb5AnZIg+Zyhip9X4vXhbggA=;
	h=To:Subject:From:Date:From;
	b=TzfjLpHkZWP14VFMooGlhkyOBPaZtHNowatOkvZT9h+k6/I5UqYPjisn6p4Uqdfsi
	 uwePyocM0ObwY3cOw4gYjhM626eRbcUJHIsy/Ar6TpFi/d3vSiqEKGwgiAjWz/tTwg
	 79/d6WFoNIvdBvNeM2igPGb2OoElI5rSXoZzVCcir49//hdUBsQbdx4Lb67HxYa9W0
	 JK4tpnZm9EtXY2b1/G0GXbJv+XA+3m8767uVM8efsEdTiQmkA2dTrYmQS0Gg8FAibB
	 jcEb8xmfMszE6x+7EO4d1wx8EWZJP8fC005tQ7ZKUm41Pa0sTfQ+l/FGHloQGviaZg
	 PBJJ4jh3wYZjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961CDC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987539357.18814.13350334187223125741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4a3bc6f53b02aa8ef9439f174a6b2660760fea9b9fa89880376431c2e53ab5
Date: Sat, 14 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749875393
