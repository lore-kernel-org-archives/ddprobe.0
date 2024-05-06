Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A2538DFB
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714974743; cv=none; b=qdwFWVieRdiuf0ZTH38GHI5I0YxwXLHHHA0asr70En98kcZ/IBjqDu3AB1BXpEEvATHIgLMqnzoXVCg7UtBrm/uJZ61itB8EdDTsLMXBjlrlcNWO+xa7GQplCGQrlj9Nbd+f8AsZV+JzCX1kNGjN42dj8SsLmn9GuTFT5tpSP0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714974743; c=relaxed/simple;
	bh=sqdLZNNcPEU2RYEjznkYxPEbvCIScDliD0YA4z8qUU0=;
	h=To:Subject:From:Message-Id:Date; b=T2QaQU93BhJ7DBsRVyHTDh+8T/VGRT7yekhola0JveI75AHvG5H/6ZdjoKO60FNDU5UmbH3hy8W5bHNYGPmQDhRuVyQNVMXX/nUu6MWEgSPrw2jNCB1XcowNZ1Gr4KOUXvfBPYtXuxjJhLtI1idEQnlGckf8/SHm8OWW+rytRh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTzFrKZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTzFrKZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40B4C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714974742;
	bh=sqdLZNNcPEU2RYEjznkYxPEbvCIScDliD0YA4z8qUU0=;
	h=To:Subject:From:Date:From;
	b=MTzFrKZrEA03kxZGKAlk+okZdXUPfNEDNGCRRv2McdqUDWWB+XwcWCx5AbRo6fCK9
	 PgJ2Zc/ElL4qK2LruZVmHb4lPABIZKr6ZWnL91Q/eV/M6omK/hFyGrwGWhUhGbUFKX
	 Za/INTQBUnfMBzs29BcKOuj3RQhhDTbczHSYvC4ELLDc5xLUo30zaEJgLbbXuiBMvG
	 peZncqGaB6LsMEBKJOVvHQFs8dQHhymi1skwEf/j3RhcDZ6oYwGhei1kI0SOuDE5F7
	 rolDjjdNDxh3VXYOX7qH/kfv5xAE+0fBuHM/YAeKl6MMmiuz5n5WYhF/Jpf7WR2BH6
	 m2mjbn7pzRCXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC834C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497474276.22070.5135244099669328780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c21768f87388371748aa8575fe332876d086583da3d1a3bf8bdf2beee3055be
Date: Mon, 06 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714974742
