Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A22C30E844
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750462794; cv=none; b=gV/u3wNiIOkP3TQ7qQ+OSmKAWiNiW3EAWOhQ7azhXicpSdpg40bcsAgGtJDGlwsF9FbYPVQxettQIbz/Ev8aNfHJYrGWyXao5QgipPuFAWpYIsEypGryHkhOd0+PCebr6ZPhIvXMRjOPWQ0lYhFGzJ24hj7Ju5mXNeAgulYjwDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750462794; c=relaxed/simple;
	bh=5Drv40FOykZrgjLNCo4Vsj50ZarOS7AXY1GTjbZ4uYQ=;
	h=To:Subject:From:Message-Id:Date; b=oNeTP7EwdkrpY/mjNpf7z9A39Q+q/0T1HbNuglFrNVGt+VN5AxwsP1UKp5AumXHGidmPVeScQs61Z1yHuLQ/2tNK9NcQsNLzYYMdCgZZLOSsZ7TGcoKilxvHBwdIw1+k5aGAbY7N1oW/AyQ4NeUDpGv95jUb0feEb5AaKAUflLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQY3x+eK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQY3x+eK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BE7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750462793;
	bh=5Drv40FOykZrgjLNCo4Vsj50ZarOS7AXY1GTjbZ4uYQ=;
	h=To:Subject:From:Date:From;
	b=eQY3x+eKTJ9VT7LI7WLbVijouc3kPNbwLVqvKKVE/9kERpAoFui1D6WSj4fG2Q4ti
	 bWPWp1MxXE0GllIxoQBqszcWA868bHKJJlVf86k/FRJ9oRvr+UzdXWsXh2LsLwpaeT
	 CKXY3Ao1Mrut9hMfC7CdATKCE5iuwFmVsh74XsHxEWDeWfDus9gEz98PJWmhRHcv2i
	 268J+tR+fBlwSKG9GUbPbNcbBgLVWZhtSuoWY9qBp8kCwskXgRRFe6UHY2zVubMpuM
	 NmFZuq8AeIB9Dn+jBnru4Dnatl1UAb69is7HC4xE+nlDUWRd0+3RkyVwTMywXgOcjS
	 id9ywOcqBQZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95717C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046279358.12709.7393407017765243438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a0628361488ce2c549657e264b15b7f5491c914433e2b8e460b4915804284f
Date: Fri, 20 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750462793
