Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8CC3CF043
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778950834; cv=none; b=FjbZyxc/cggznBH3Fuo2+DorDiwxG2dQ4EEB8N0TD3Ry5Vyn81Ao99bZeRvUaJLIJ0XtNc+cmZxjgKc3YZmM4vBlSGJWG18aIJsWEB2a5Ytz+V0HOg0K8yQ0xkMUiYQnhx8SzLckEc/XxNfM2D1l1XBhYjxwBXpKU+y9sVWoVl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778950834; c=relaxed/simple;
	bh=3RlhYvrEk+RYSQ/dvLNk8rbMBGIkT0Tmi+vaAJrxjMs=;
	h=To:Subject:From:Message-Id:Date; b=rhrtaBefDfD1pXioOrkJ2LcuUK5TEW9c5RGHEe6Pp0uzvlx5HnV89v9Fk1P8Xt16Io/7UzBWhZDKz9kN0WDzWpBGO/bAYRDvz5lMUCrrWCdZLMjEFl3JL5hBmS65eAAY3KVCgt8ornjs05Iw7CevBgpbQYoaJkt2qJezCbWbPa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjyIIHPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjyIIHPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BC8C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778950833;
	bh=3RlhYvrEk+RYSQ/dvLNk8rbMBGIkT0Tmi+vaAJrxjMs=;
	h=To:Subject:From:Date:From;
	b=PjyIIHPEzDNz1wWThkapdx33R+DPTdtLpx5QY/pv5JDGf0frOEN2VSjAOtUmxZVmV
	 wERydeR1KmsAhvxM4iHnU6TjMHKx4KnSn7kveAKadcUC4rGg+bWKqE72RS/ENH5ODf
	 Zki1Cilqf+OorFklxIdTU972ZIFvr1wA0IT8NnQaozRVXT1i0+zHiC885ROnLNCqXK
	 rxSk4W1ei6BjylNBSPkpSyWCCqNhr7fVDYPKZXAKEVIWKob8lYMvo0u2jzLm0UFxEZ
	 VtZE92SAM7kv1ce2Aodg39TMnSRnKecVXe3q1mJcA/NMgXB34eqfvakABMDDk5YtOL
	 nW7pR9LD+WX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA27CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895083369.2344.6378784988082017246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd64dd531b37687825f72e01bed39678f57d761e23fa284a27a91c8f41011c4
Date: Sat, 16 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778950833
