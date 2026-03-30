Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0517E3845C2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774894494; cv=none; b=WXh+BV2tJ00QK4zHnQwGoe0HlCMNrlg3Zmm95tUYnB+vRiG3UzQAgaicXLemHJ3zjhfZqK8W4YDLmNxHPaSfNlJX+zUp0s6+sbG8pbR0ePp1x9xXWXDBHMhLNbMxpUwKLnMpNWBeDSCzp3lX0WopMmLXYqTlKQRzWn0KyAT+P7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774894494; c=relaxed/simple;
	bh=jaOYPNxCi571IVcpjK+jY1sTX0f0cr3jkPQB2KwXg2E=;
	h=To:Subject:From:Message-Id:Date; b=ZSanDjXzP4zr41dmkCDG7gdhKfETaBlnHFbN5G6F5/dxA9H66WW2rrdXp4dGtzBiqBbs7nwvfKPfFZNuTPz/dvxIwbOKTBJ96+uh8+d8AHcuKiMe5JjrUHbeNUO4hNS7rXRNWLPlUxRkMtwnQ0644J1AgVCZfOkk6fVQ3CDHa5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7cbvFY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7cbvFY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91FCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774894493;
	bh=jaOYPNxCi571IVcpjK+jY1sTX0f0cr3jkPQB2KwXg2E=;
	h=To:Subject:From:Date:From;
	b=F7cbvFY6pGacegekYRURCHmooZPGv1ccDXnJ6VJET4kuLaxwjwNsu4xSrAhkBS+pj
	 impEWlbui+CXZIteTjqd8slgKIcF3w/Ch2azLzaKkTtGi1dHkfxo0h0q/xYKA574Rd
	 BtmkHENQkaFqk8sRBKGPTAdzXuG/20KbwqJZIHIPR0ftVBM6IT2aRgtv1ilM9bDqDB
	 JBoMk3bW0mMAn/VU9coDzuAEibbsR7eKxRWIPhU9eKfpHDWEI8FxertcNvrTid3mc/
	 fFgEnHwgnkpUeNtPJTnyXDXNpkC1yijH9qwRDRIyK0Z/sAhTRQ5hiyRqkpfzl06y2b
	 yrL2hJu87z3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE11061B18
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489449359.27087.18383291549889370930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fa99897df69ac6e60b4988b559221a152d98af7769ef95f7f4389e232ada78
Date: Mon, 30 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774894493
