Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3126217722
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764724973; cv=none; b=bXV5vOiBOt5n3pCn+gmwu+Kl7D267sjsGFmeW+EVPMLT1zRa0f/bVwZuJThyMsWLrsMU8Ql2h2a5YVJaD3urzcWXbVGFYbNHAVxczG9LHdxxVj+3o0Ek+Ll7u/At3ygA8MoBZprdLh8aYjPoMzlkytxtENFtApdefgK/Uv7hVEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764724973; c=relaxed/simple;
	bh=bMrFcq/27QrjF7PFKIQSe9oLq9gpoAlfDOA7KCKxMyE=;
	h=To:Subject:From:Message-Id:Date; b=Rq6qojEa2Z3wx6GI/PWLYprMzjqKUAMkwsihwiT4s7ph6PIeG6b6bqOFIxxrapUmlg5wSSROgSloGzsOlvXY4EGS/iJ0t0/Qaz9w1A3hhYndBHD1zyc2dQY7mM4sVoJBcJyutMSfGDNzdPmo7Hh7DtwkxU9bFCPt3TKd+7Lcy78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PL1I0fp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PL1I0fp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66E9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764724973;
	bh=bMrFcq/27QrjF7PFKIQSe9oLq9gpoAlfDOA7KCKxMyE=;
	h=To:Subject:From:Date:From;
	b=PL1I0fp5FAcOTOMG+nukVPfiCQNf9RuUy9fL3g9tp+UFWPX9FFojepPT83TL11Ktd
	 Z+kCmEqUr5WXbUJ9FeQTqT+bX1Zkr9xWaBBQsaVNM2LXhbvUuLFMhkszR4rwoW28cm
	 tfjgVFxxAJlRthTjqlDl4cWs6+ha7moqYD7/WMZIVgnWSWIA+DRRo7aJr88sfb4nfb
	 2m1o3WLZ4QAdarNfYTjiCuGG/EY5Ue8F9OQMFHkxE4uDz/b7diLnrU5IKsa0K5qW5R
	 gDrWkNl2DVO2ObkOfZRwI47TYkkB7v3GE5pCkQRlZyWajfIvfRCkBWCmJcADSrp5LT
	 K1U9U9pyxqtZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96682D12689
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472497360.23247.805559750993198840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a261e30ffdfceac393860be5fcad3f5442c5c7e3d7a7c0f4055535b890cba2
Date: Wed, 03 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764724973
