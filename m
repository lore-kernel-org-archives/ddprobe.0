Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295811C3C11
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754771394; cv=none; b=NcQmuOmG4s5Mge2u4gd7YEzKlXG+5hZ0YYSdgEZ8P7uGhAFtjEBkhXQ5kG7c2qb1u6mDDvU5tcuQUcYLcSRA7Le+n8T0rFJy1sBgRx/1gVgzKoexwffuBYEKc50a9TDyIW4+sDNlGwBjk6BKc8rU1pi9F+Ov4/RQwpnKaLbLIzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754771394; c=relaxed/simple;
	bh=5qD55jaPmFX/3nWwSr/9hNAsNw/dQPsuKIsSXpmF818=;
	h=To:Subject:From:Message-Id:Date; b=TPX1g5NulhQ029K61zCIKUbfVAdB2m66L2vJtdW4xOm7XxFcv+DXF5VMImlDR8F5glDK2Ru61c9ee67BqVlSOWe0JdAUudNpAV9qJU06fk+XdqPAuW/BM8HUvlS1wVu7OMRQ3IRnjJe8Lgn71q+k+Oul4M3PQvcyUNytedmRqa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGY6RwC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGY6RwC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4455C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754771393;
	bh=5qD55jaPmFX/3nWwSr/9hNAsNw/dQPsuKIsSXpmF818=;
	h=To:Subject:From:Date:From;
	b=BGY6RwC0XqiG3lXbzPfGnyB4n81D7T1vnwgjXNnNS8yfDKIMZvRNSgz3uxyCYT4Ca
	 96F1uD//Eu+HThVKQsSBy5JnCAoNEKYPW3v6mKcUC0XNXJC6UIW1OIqKRPynkjbhww
	 BJ9TSk1GGoc46s+J9E7MuVtEB4sy3vV9QCxbUMpU6okKb76xuKnAZGF1gh4l9aQKTW
	 8XdSQsEF5LXhUkgUhHsGEDwhK5ZPtUFUYvrorNNAHHd+g5+cmE2K8pYRgaod9EGgtx
	 Kuo5HmtJAudOXbff4lC0PIi4PVPZAJeHFe1jRtOEBZi4TzcsAnklcWdvpiOk4bFyQI
	 VEv5xMECT+n0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95862C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477139358.16755.5756924968594457512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74870acfc305a528db02437377d91cf58a39bef5cf4bf129feebd8969a381e47
Date: Sat, 09 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754771393
