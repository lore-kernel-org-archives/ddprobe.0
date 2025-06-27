Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B34CF4ED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751026794; cv=none; b=BK3kTiRNRtx6LwX0e1vJROPhN6sWif/wCO4/qLAkB/Hfl7UjV22dDH26lUfhwEwxpdA2wtop4LSeQ1kNW+j37b9R3EXHk/kz4HUyaaY8bn6anp/sW/gNY5oN0wdTAPhrNkBuL7OwhLSp9OARQ3Oz9k/uKYIdClIFuc5+r85fnWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751026794; c=relaxed/simple;
	bh=K+w3fMV5VuLnooxu9nWB2W11+kOYaRdudoJuZhcjT/8=;
	h=To:Subject:From:Message-Id:Date; b=YsvbqiDNTgE2tMm7iyx3nCJm+g433wv4fg40Z0VpD5b3DU26eSQHWDOVvPjQ1PHyyKIL+LydQ+8vNkicfTY+yXhLrjYzSALYdJpqaT6WdDp1fKWWTlwtyqFjiDBP8ZK7H0gfCh01cyHwPhYiPeTtGLUutu938+P0jPpxy0wFqXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCM56/4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCM56/4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57AAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751026793;
	bh=K+w3fMV5VuLnooxu9nWB2W11+kOYaRdudoJuZhcjT/8=;
	h=To:Subject:From:Date:From;
	b=VCM56/4f5KXR/XWLwv6hQQa+OZ+MFBHf2IBSAfbEG8Vj1d90sXl4QfJtXdYfsajJR
	 dA7r+UlimpuD56zU4wfdEgaHICDa2ipzVHCDWErK6f+jPysJS7GKi2y/bzrD72GqyO
	 sU00387eHKjdxLN+dbah5XouBYl268XiIdrLLhcISFONwLk13xxR91u4EAzoEv/t7g
	 cU0LYGRXQ3PLjybv5qePsBvyBm8C/c8Dn44sxHAsM+wwqbmyWAeb/XhpcPbq2+8qSW
	 sVDCTx8l6MYbUTIxPVNFcvUkUcMX3HFTUPMp9blkMvQnLd1cvnNMeS03hPOvUcMOBr
	 qESAHadGFGfQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B2C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102679358.30127.6127774147803397425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56f6d588a67e04616963cfe150e3374a1eb0944052882bf7ea164032f4ba098
Date: Fri, 27 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751026793
