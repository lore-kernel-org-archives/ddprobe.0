Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEE5E573
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774325694; cv=none; b=pzyTi8mHi/5QCfAAce79AS3L5lgRrMMCEkUnxqs1KptFfB0yh3U8I8OsxrotoFZAboxRYktYBqVITlMBmWO6/Z+P77pmIwFI/ZApXAjrECh9V+xpRdHVTWcqaYQe4B/9hUS/tRd8cwNXvmL1Smpj1zN1+zE9ZeXRyORt5B1+cv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774325694; c=relaxed/simple;
	bh=O3WUSREY0yCMgdY/ek2HjmCw2OD8kv/QnzGqdEr/bwA=;
	h=To:Subject:From:Message-Id:Date; b=bePu0g1jXclLtDZjirNqI92IfdSJN/Rui/a5OCTZAltz6w0T1cJjc1NlqxfsUwJfNzIA5PZhbScdUZj6ufgIyaq5fZGQrRJcU7pAooDaS0QbSTHNPy7F8jOeREHgSpAT5P29/CeRC4S2gcQ5JhyPvqJHbSi2dE/1hzaVV4iQt98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+JwFXMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+JwFXMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02CFC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774325693;
	bh=O3WUSREY0yCMgdY/ek2HjmCw2OD8kv/QnzGqdEr/bwA=;
	h=To:Subject:From:Date:From;
	b=E+JwFXMuNbzpTTVtDWtWlhHxtrEt/C9NfACOqkqkBPwmsjyT0GApwTdzoXtYsEsj6
	 Bf2//EKXxGs7z8CY8KkWHcJD0zWgcVYjfrDAOwmxBeNnVRWz4S79EJ/7DDXacC08oZ
	 Ud02eCP5K/bZ4FkX1GEMJyZaul04M0uUYb5883wxkzfoOdRsMzWeVlZDMdRuSJrf+Y
	 0gfY0DnFhFYt+D8b4v0wJZXPkX30nyiIAChFPn2Mpx9H6cwKe1IUGG1/bjtXrC1/Cf
	 7UUxXWcesSr3B8lR1oc26YSAvQcBigzMUJGmLmm+Tm642hkmBWpsjQW2en6WlpWrUT
	 dZGpcltzw8n5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F72F532CE
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432569358.2194.3326349837360071552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4a280b23a749227870b50290b4756ab92c635afb61dfa5573255a9f0998fdc
Date: Tue, 24 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774325693
