Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C5E213E6B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744990794; cv=none; b=eUUq/bQemxs7bQapOT74gaH6LFFFB3LEZsT8qrxIOR1kTCjxpTYdNVDGuEGucnb0JI0NNFlXEJmUMNx2D7J9f5DiHXjoLPJgG9TbwQU7jKEtiLrZIWP2dD/zezF+p21qqs9VzQ4JDPUp3r1f26EZL5pCzz8B/g7BoQqmkyQtrTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744990794; c=relaxed/simple;
	bh=417m46A0RRykSxmg+XNYLXZShZFBZXxYLxfS4JUMYII=;
	h=To:Subject:From:Message-Id:Date; b=b8DSuCI96T+JkMDQRKfokZdg5f1eno9/spchAeOJdg1NN+2AjTbZidHjW/vYZTEaAeYWOk87wXD92FeJ2r5VQEDftrVhA130qEZ9t9/u21hon/VHt94DbhGClpAQdVNGG6dKi92i5pie7LMuFrd0ni4mwq27fQb/nddj7N9iM0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+B7Y7wL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+B7Y7wL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66FFC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744990793;
	bh=417m46A0RRykSxmg+XNYLXZShZFBZXxYLxfS4JUMYII=;
	h=To:Subject:From:Date:From;
	b=h+B7Y7wLrX5j0dDtD1cgs9kvNXiJ6UUi9qw0uyCwPnv90VocCDL+1hMrQBIXkhXlM
	 vZdZCEc1vi/P4Amkdz1ktk/eOaDq123SjfC55ojmlOADJMbgRxZVobCNWwPR/ZRSy9
	 8cZJayZlu9/ndKSS5AI2xQs8vM88bIAnKA1nSvkDYGxMFr6iX1VsXjEzRTBMCx7Y/G
	 7qpotb8RPu499Y43KOhp59r6SIVSiWWrSvSWXpB7gEHW2cilw4v6M0pIATQ/+jEbxR
	 iQq42J0bgXKDYAHeiLmJTPB/RanON/ujoBS3sfhdZDl7MH7HlqFN7fANWDRE+VGaRb
	 C2GvANN3laohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9F5C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499079362.24023.11337621455704414252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4dae8c3dc152ee3b3391a13f05e864e756bc91f94c0cadeb585a8190cf65a0
Date: Fri, 18 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744990793
