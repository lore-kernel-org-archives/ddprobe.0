Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412CE15B102
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747463394; cv=none; b=lrGmsGgBUIqDY6v6CUr6NVC5Pm+o9TBApxUkKVH66BfzQsY07BMd2tTRmTCSrDBPEmAyHA9gIhtjNMSxJEBu6Sj+u6YYeH1nCl/rc81bS/A5H/s4a9Wnxwf6ICogyswGNEsGml6cIYSvNU5ALih37TjpWpkn4BuZ/52nZVozuO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747463394; c=relaxed/simple;
	bh=yo6bfo+nNfBr6OvojNaeI/AAgPkOOe4Q+Nv2Iwk7+O8=;
	h=To:Subject:From:Message-Id:Date; b=VRWQqrIt29mmrwJC4yizXUmW8Rmchx7Z0W1K4PaBiVS82Kwx41Ku9bY+NvqiOhB8ojJrhE3k27Jvw2b3nU7Axz7vvog9OhYXJ5HpALTPfPGN+6A7EjHPAiCALbMmBy6syZHoAvD5KaRQYR85lRCamMBSa2OSfoNwYashUgq5S4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9zqOYJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9zqOYJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E64C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747463393;
	bh=yo6bfo+nNfBr6OvojNaeI/AAgPkOOe4Q+Nv2Iwk7+O8=;
	h=To:Subject:From:Date:From;
	b=a9zqOYJDPHEYoZe5QfZnRiyePx7PSOyMbXaoqVv1Pu3MnzM4oJzBvgHV4nh2dRbff
	 Qf393oci2qBk6Wndptwk2uwbc1EW37dJp4Y1of+TPqv4XyWtuukGLErV5Zs3zeqAG1
	 iZHFCnksN7Q6gqmFcvGscbluKshMLoFZvJ3b1tXi+ZrLu9c5EzQBjUf6n+tyRlcDjQ
	 Ft4uzmfeYsMEtdoYtJt2sLy2ttSOQ44hkCyL+tdiLEJdUoYv+P660rDerij5EYwe6g
	 7YHOZhhr2/bjA4nkpz2Bg8z2MH75pSVP+oX1fzNKdYM5PRG0h21rocxKFUqKsOGvup
	 2HJOJFVez0/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A07C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746339358.19183.1887224455004262853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0375ea9181a7f3b436fa1d89a03658d13264192a6f386261a5af2524eaae5b71
Date: Sat, 17 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747463393
