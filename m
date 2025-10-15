Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2025330103F
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760552394; cv=none; b=YqM/ElHPjPf2jVky5W3P2IDildww/Q/fGXZrQgHPPk0YHh39TxD3MrHkB+Gja3mt5ZlVKPu4ZmdYqNVcrio7HjFUl6RvlQQFF8rvnVxojPTG7GksDQEITwAGslN9iOdpQ/Ev7JuqZ8xXKbzC7d09Jh2HBP55HOjDR0D6XIPMfp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760552394; c=relaxed/simple;
	bh=/r+egSO79o9JAe5bJEwne1laiDxgjPY1XK65SV3VQCY=;
	h=To:Subject:From:Message-Id:Date; b=tqJO1bvgv3AFhdxskPQe6+xC05agwSULxF4HbuhYdEKiAAlpTVvQAoe86Uzt3oyzAnRlm9k+hSXWbSVV0oBnSxzO+c3CqT7F6LFm+VKUcYz3lcxIT/k6PBkJjibgWOefitLpjkoXTgy1tCjdcZF291rjO1xUDpO9TBhQGUeNsGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTRH2oWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTRH2oWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF8C4AF55
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760552393;
	bh=/r+egSO79o9JAe5bJEwne1laiDxgjPY1XK65SV3VQCY=;
	h=To:Subject:From:Date:From;
	b=uTRH2oWQNhBkeGlGx+3NVNleA14y5+VsqexDNtzHDwju1NCRZGJxnUFAGMNvrOdW9
	 5tHW8NmcsgK7Hvxvl9TI7O9yctHTGb8V7tucSF0taI5dwe4jAnhKLPyYlAAmcb/vc3
	 d5267nZQ8eAVmfaz9WXGHohLOudvMiZzHH13k/nkiGx9w/rWqrs25ONO8vqcV3J2m6
	 gpoTfpfGRzYgp8QdnODuDF5hWB09SW/k3Zu+uNOgQFsDRpaftrAZWLWr+Ec8KKVh+a
	 /6ExyeNITsff8UTu3te5kAylmgdWNx7FalGjZSDsYuW1OmB3x3mYbSBpbcKeZ+8uom
	 sQ4mFJfUEK0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129DCCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055239358.26584.13440177524313893890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17886b6898fe2a94c3324aa73726aaf1252eb798069b20db8c678bf37703a08a
Date: Wed, 15 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760552393
