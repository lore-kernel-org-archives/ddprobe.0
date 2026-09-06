Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5937F3C09ED
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788717034; cv=none; b=rMFAj/+eq4gBi17bSxoAs0QSFhIdfsUyMArB0zmX7QHCZKDAJxPWCkUxltZY4SkZO8GZoRXqG5ymkhh4UJUyIxcg8uH8hj9bVKmdBGOZbgLRW0mH+8P+LTVFnPSAN04Y6ycgenOhlZ1r/ptle+nnVBoZ9N0f+Ag8V3JSTO2FFck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788717034; c=relaxed/simple;
	bh=HiAv/GCAqX1ADsCKdGM7ItFZbmIR/EDbfwCZdLYx1yQ=;
	h=To:Subject:From:Message-Id:Date; b=auxmBWCcPZVvbGyJ4CnFJn0oqd8n6rfVZuwsA4AkmK8eBgP0uamPsKkU0mELyAnYXC7zI9rcs8wgEc2EbbemZ2h/weWDR9CyppvznVxCClcgVljEb9T2aG4Ak9mXqhRRj0ASBLszxkOS7XzwCaRM81FUciS81IvwhuK/rF8DBK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWs+WZSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWs+WZSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0186C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788717033;
	bh=HiAv/GCAqX1ADsCKdGM7ItFZbmIR/EDbfwCZdLYx1yQ=;
	h=To:Subject:From:Date:From;
	b=XWs+WZSwEcAiuSeeR5/ZTKQhcyeqbSXyTLttH6BII+Dq1jlEOJ38yeTMLF1OPKDWG
	 ldaYjd/rkM9hYUqYN53b+78U2ezz0pcXDxIM83JU9Hx+C+lFODv6eNg/d6qxZdmTeN
	 ZFOInuZC5kqI9WYpdFiB2N3m1chNcyZ0uBPFXO70VPPxHwejR9fu5yU1vaxEZO10nF
	 9veVADJZENgt9KNg2uXWiCGo33vGsAFLtIkc1DywfrQCAyV/lZAAfc000AVZYD2RYV
	 CIYiUvb6uHGUrEMqtJVU+Btghl/BaFBLl8zA8qw6kUXmPywzapZWIV8HugGH9ZXMoR
	 ZALy6MqOqYh1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD789C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871703376.26498.13922374475368876787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde8ffef54229933bb729cd83d3ad73a981dd3251fc0ae79f32693755abdcb5b
Date: Sun, 06 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788717033
