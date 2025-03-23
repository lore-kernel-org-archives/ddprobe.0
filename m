Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F6216FF44
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742705394; cv=none; b=tEKaxE7xyLQiIbMojqqEOnpwcs9xrJn3snibxivB2yIdKo2Lou1rMtN8WTQMmZvky1MIPB9TlaF6LRNSlR9xnsQo07rh3qlJai4YRGXoT/uKHtYPB7D6kW3dXgZRYjJcaRVimMJwHTj6GbzHNG7H8+7t3gr7gaB87I1Yulg+dtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742705394; c=relaxed/simple;
	bh=aRtvmrJfTFBS7JgIz6IWQ0XoKgxNSWkpKqfZ2w+zFCY=;
	h=To:Subject:From:Message-Id:Date; b=FJ5xsvMSC5r4I0MuAjY1AAUpCuFTR/hSQhKpmMgXWP73rKUq26+hLWvGvA1FD5pL1d1L5GrzHl61YTx3POt3UC+WH9c30ufe8NEgHLDAvErC2v3Xyc3vc5nqVA30ksv2FHW92Hve4W2FOHTrVU6srCviNCyFzSIvlhJq2jYzgoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVLq7dPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVLq7dPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCC3C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742705393;
	bh=aRtvmrJfTFBS7JgIz6IWQ0XoKgxNSWkpKqfZ2w+zFCY=;
	h=To:Subject:From:Date:From;
	b=fVLq7dPlhlR2iF7oMzDiPCxkIUFo7rKhTX+hVoVERrKZt2mt9LowUhWiUEY9YnCzL
	 vwwPQ1pI5FI27f4j/Rj3fUM1cdBOqNf3B1vVpZo0x8X8uyzZ23zqIhgzOhpPJqLyqq
	 lMyLqgJXKPWuqAvr8+88zmBL2LygDFqBczQUUsyOFp99UHCFLJcLXJIutlIr9/8K1P
	 Qj7eRqWRKtSuwBQb/d3x9gTqarPLa0dpXfNZR54Svuj4Qajz8zze3GqyE5qZlgsE/d
	 xw8j4oQTX2FPrzAAtGlze2/W6MA40Ppy7p7B00p6E6FlqEKzQb8vc0FIMLbTsCUgOE
	 Kme5Nw9YQLshg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9701FC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270539358.12695.3348837749102678938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468e028ef7ea59a3d5aa04e6b778999b06dc73dc21661768e2021b4785ab441a
Date: Sun, 23 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742705393
