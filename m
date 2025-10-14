Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212601C5D57
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760465994; cv=none; b=ea8hWi5K24vg5c93hsQxeBVVYwANhiOFjNi8G+bwdVdYMB/fxpGR52cAMDH7HsxFZTTiN+6VEzfmKSiALBoac9VMjyagRXWZOs1AaIs71q1Tt2c/C0opZUJAMuhXdz4J3vgf60VnJIA9c2uasBDn6PQ6Ucz7lc8wlqKq9AWTzi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760465994; c=relaxed/simple;
	bh=0oCWyrOUbaRXpTBBXO1ggCBGmXi+hmHGNGxGz0VGn1M=;
	h=To:Subject:From:Message-Id:Date; b=tB1X+sK8hGSJ5vRpsy8LqmxAeFQjeM+cwoAl5RdTQiUHf/CNLVGcLcGMo/mZ+KdcshzmH1daDm29OncrUgFWYzNZf4H/O6eSG1pDidQcOr7PlN3yG5pLCoKS9IFxxAQNIWcmQP65ZSL750NQLvdy1nYAkMaVqy/FMzdj3n+8h94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvQqQ+bP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvQqQ+bP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34D6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760465993;
	bh=0oCWyrOUbaRXpTBBXO1ggCBGmXi+hmHGNGxGz0VGn1M=;
	h=To:Subject:From:Date:From;
	b=YvQqQ+bPCK3L6UY1xmI5gwvHXFfrw7h21of5Uk0JsiaGN/EeEeEouY/MvU1M0VYdd
	 n9d2v5ucHcTb/DNcOLF5bbvEWjYoVGOv15FSu2S2kc6EtvgWyMmViKsUtRsAkt8Hlu
	 OWCxpdxKYS2cmCRlRm2LKI6qc4gzwUuWU+W/W7kmCH+N18/qmYRsAsxytgjo7lK5Zv
	 4p1Tj5kHRDURHFmS27SIEkjOxDN5AgXjmLONLHiZTk/wrsvcXmIKJt+5rOxbnzj5QC
	 0is9qq08qZEhHEalv9fci/XO/Uor1JJv+kH95RkFKQlZ/VXWRcgtW+SWnhAGPNbROM
	 fEnYuWsad8O3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033FCCD190
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046599358.3874.8256167643573242310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d453efc9e33c787aa88759947a2b163e0160808ac7178d909107829ca9b8ad34
Date: Tue, 14 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760465993
