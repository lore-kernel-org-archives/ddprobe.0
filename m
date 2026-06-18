Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38D0345CAB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781756794; cv=none; b=JXcxw6qcUFXhAIVEKcsHVdkcFGlOacqihU2VznFXA6bv/KIYJv4AqG6YSPN02XKWTzIMnsW1fOJnpbWLdZexwk99ene01w/50t3ieO+nVn11nVD1h7VzAANXz6pk5VVIfIZOtAStREa9sM6JkhJHRKuX5DqWau1lc5VVzm7lyBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781756794; c=relaxed/simple;
	bh=DGhiAskKUSnJAklp7NWpxMlcT3wfzEYTF97czHQQIk0=;
	h=To:Subject:From:Message-Id:Date; b=O4FvzZFvMtAP8JGgpbLnd2Ik07bnOuUjPyfyLVV8ekAcm+F/BNt1lMz7L1RD0b3CA8T1MbSEKP9ppTct3Bohop4iRQKqIgVsYJKHcIMfVo/zot9KBadwxq0nFJZZR12TqY4HxAxRsBZOWwn9/vjD1Jz8RytI2mRyP9TgfHlh4ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6hCH8nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6hCH8nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A366C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781756794;
	bh=DGhiAskKUSnJAklp7NWpxMlcT3wfzEYTF97czHQQIk0=;
	h=To:Subject:From:Date:From;
	b=t6hCH8nn9yBJU6nZxss/NTX0NhQv6KlHWYyogZuhxjVOIM3DHdGYC2+0VseXtC4h7
	 TJe1tAZpHFFwdORzl7sZMx3q/ndhSpGMVb3qzpsaQpPoWY+4mDg5CugRJ7ctpaxFmw
	 6FFZ2UL8v3gauBsB872wm+GiDEEpWAbSWsXfth6PLNpqw9CWSD+/Qpc6C69ua7lFmj
	 Xb/ji4BOJ5DHKa57/wH2L8fjoBjqcA70OArXnTnrarmCh7TlE+cNIlO7+m7L58Sy6o
	 sjFELYYhBPwJalfngXKOSm52Qe8xKeUlmF0TQvlzgKJKlcZG1QOaR5YTRiXVyaDTIE
	 gWndk9hYOCw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2229CCD98DE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:26:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175679398.1605.2716176743563138060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaeb79232289737b8c17f4492ff7012ee46190e4ee7d9722ecc397cb6b95391b
Date: Thu, 18 Jun 2026 04:26:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781756793
