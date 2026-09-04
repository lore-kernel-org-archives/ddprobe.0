Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C7C37F8A0
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788562834; cv=none; b=A7/Dj6YTDid+EQVtYU3ZMCgnvsZXFnD6pwD7jJsSRpt7e6o3NH0GY4Rvpj3Z7bEv2MHGe8ztE+K088GlYGmfkoHMMRwWXs9dJVY+6EwB2dY0sAu4HBbEa/JCny5tDZYugjhZ6mJjUuXfKtdxF8okc04at2dFyKBDPgtgKgYF14c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788562834; c=relaxed/simple;
	bh=cbTE2ANNq+s37wHLDZMLfv+dC50m/Z+gwAsxPi3rxdE=;
	h=To:Subject:From:Message-Id:Date; b=Ni7avRMFvzB6vq5rW6rnZuy9pPiiStyAp9skTAiVez5wBYR8889L2n5fTT7Kkw64qesDe2dkWH19X3TxsFOb2F6NrGWMosc40uXlfOMJi4+v6AC4dEjoHqIL6EF84X71jKp9bU8EafIVwOqFfHbssrNQCKeVIMUcoqIhSoujx9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AINK55vG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AINK55vG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB5B6C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788562834;
	bh=cbTE2ANNq+s37wHLDZMLfv+dC50m/Z+gwAsxPi3rxdE=;
	h=To:Subject:From:Date:From;
	b=AINK55vGvSzTgyPQo53qxAyzo3fQ9LfgW1LMbICMPXkhSTDuEVWONNygKBwuW7eM8
	 ufA4O0/740tiov9SwqomrivdzPSKJPvDsi7r7t9B4fbLuhoX2tzTWE9A/HBKNcogx1
	 LFra6NBJKtpvSS7GgK35gJtFqKETBY2Ecw75VCvXxJBxZkmM6ZsWyLD7DaMIUpFlIU
	 ULd13lO5QjgOiM5o4YTBVtKPc1jAYSMQTIo6QdH4gqjOk/snZtpcd0Whjk3Qm3BMHp
	 TOTdKmmQwmvXxacfDbxGUcWits7t1nfH6wXF+d/gPslr6eMz6bwHktPtF1Z1qmnW3f
	 vlB9ewvPaGqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30D9C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856283374.18192.18227222480716767585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8429e78e9e979d44e21337c5991795a7d07458fcbdcce102fe562aa58ba675
Date: Fri, 04 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788562833
