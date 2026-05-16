Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255A9385D9F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778970634; cv=none; b=njVt82aG5BkCH6WefS8EZXoMLac/Qc8g1V7PuSIRYDA1uMSjfXrs4/OuUNexR2cSo99OSTBQUdjcBGYcQ70XhNRHq7fQfYb4DfI4myL+geZuG3LlA4GOKm2/br50L9CWoLjpBv2vlRa3MC9xhYYKjW9jniypIxPcshvNl+SpLiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778970634; c=relaxed/simple;
	bh=W+laH6NmweZfs5a9MFx/ZDtcj/wCPHWuLe1vVl/Y2ws=;
	h=To:Subject:From:Message-Id:Date; b=vDBRkjQCw3UHCUiHe8Yv5bsN+e/uA4PoQ7/729bFlWelv3vx/jBjoS+ubD0VC/3ekWSPWMiEGZo8V4gPmnNyJSxmFQpE0rVyMIny9+aW6uIuED+8ikKF2LuwU6bytf5YWz8TTJhooK9qBwnTRU6zNHyC1EJGRlyvgSefirbw2MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfEHwB9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfEHwB9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A91C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778970633;
	bh=W+laH6NmweZfs5a9MFx/ZDtcj/wCPHWuLe1vVl/Y2ws=;
	h=To:Subject:From:Date:From;
	b=HfEHwB9VprYOSU7Q9PhyT6ePgBEDKllXRx98TZEdwlUCwsHWFGEnOy+V/dIangQw2
	 Tj2uS66NgS+3nCQ+kHRjq//N59f6MdV5rUoJrzzdrTLGvZa8VrhghDAioWuqItX+vP
	 ypXKS1lbqO0ZR03RuwCKMmuKbt2hxo+B8vOM4y0ahAR8qezWa25q66KxcUU/5Wyc5o
	 81OTiuuK/26jaUE5LNTWJXXjkDMf1KcbZkT5Xd+gOJAD9vRKRoil45SjRX2Ua8zotx
	 bMJwiSBRFJo2/1Quth5PKk5lx90gbKbhK6A/Cs0pjvf1tG0i8m0DhCaRjQ6QV8/yzV
	 5G4YLo424VTwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14A2CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897063369.17545.2520832030301186236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179c2eed6e9f60ec6ae4f29da7b5a27374986f5bf93100a88afcc137dfe3c0ff
Date: Sat, 16 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778970633
