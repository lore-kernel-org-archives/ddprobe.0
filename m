Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323DD1853
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741997934; cv=none; b=W0ma2et/UaJr7I+jHzJXUhlMiV+XMu73cJvGC7H2oxi91NI8PL2MdYXAeGsB7sWFROtFDgQAMrhV8ybTSzT4LQhaCoeApk4tdifcc+PwXphteBmG5ujE24lXRr8mqNrPh29L/QFhTdnuMJiY73kKtLspqIdxcJSFnQHI+1cIPg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741997934; c=relaxed/simple;
	bh=bxjhcFuPrd0FOl770z22phCp/Xt9RDTtv8xKaIUpOCA=;
	h=To:Subject:From:Message-Id:Date; b=HVcTptatWAyFbponSc6+YVKJIhmd1j6++cg7WcQe2pvZW2UEfsBvaUXp5b25x3XcHRAQ+0UP+fei/8HjjB7+Z10in9wGcOUsrLkFxXHcZubG3DmnV+pfpAOedQCJH18QHg0veW1UWvXun3HUTZ7Gr3e8XJ2Bg6iiobmwmKmFD1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8fh2zl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8fh2zl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9439C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741997933;
	bh=bxjhcFuPrd0FOl770z22phCp/Xt9RDTtv8xKaIUpOCA=;
	h=To:Subject:From:Date:From;
	b=b8fh2zl6SR0LoEjYK1LMLxnj34KrW07ZvAmYIQGBKsOvnaFU/eVqF5NN6Jgd4tzj3
	 +V0t+h0RN4aD93OiZGAypNOHVKvTgEO+izFrGvg+ytmD3Rvbr2qOz3HY2U5q9CN9Jw
	 fMOeDbepbSDZwk3tlQSDQY80otF6i7SfClloCeLGbPFNf2Iug09RIQu8vhsqQPHIGf
	 Qzlu1zoHfRpeaK6vqmqniQ8+SxAQQcQIEQyLhDxaIMq3lRXPGP0sWjqCZV8VuGj/kJ
	 vAefbgRLs3E/JSebhxG2p2q3tQEHcx0LaWDufnpdIA7ZutwTdnoKj+LL8/s+0zykFY
	 D4nVVFAO5KhTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94301C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199793359.16674.14260628928570585470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8312ab3b9a5d7d131a35a641310724333b167cad5f93ae08fe1a4b19e321d6
Date: Sat, 15 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741997933
