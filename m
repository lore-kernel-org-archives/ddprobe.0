Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B6515D1
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747669794; cv=none; b=Mb66Tfct1cQkKvUOTUrQte/SvCfk3nR4yy/XC4ZvN2yOn/6pJNHQnbd8sBbyGxFj0i+t5MwHyL2qnLnFKOXZGJs1P47HRpW2VX6I5meHH3wq9PAxBDKauKM/HzfnL8YkGL/Fh4DNYuQBVm8O0bcIS3L+w7Jn7dcMfHyLOLcJYMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747669794; c=relaxed/simple;
	bh=AHMcBA54ggBSCaz0YQxLRX1CKJi16BCquc70FIJdK0U=;
	h=To:Subject:From:Message-Id:Date; b=QEgYVKiIyX3353vytdhPYamOoykqdoUTwq1z9uXz+EsGCmH3+s2CT05+5FxE5UG2+3DJpfh8UIyYWi9WVeJP4nr35gz16+LfFD6CfXzseISJN63BHFhIvNbswQNLLGGt0qYKegc1acAlWsIosOt8Rn/pPA/7hSJpyGlor2G70oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dP2Lio2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dP2Lio2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE8C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747669793;
	bh=AHMcBA54ggBSCaz0YQxLRX1CKJi16BCquc70FIJdK0U=;
	h=To:Subject:From:Date:From;
	b=dP2Lio2zR80kPU3Vdombc1AtbNSX/08Egis4neO4hEcCGaa0Do9msyz0Qke8Reivy
	 MW1kukYD8YRkukZsf5Ztcafyj2P0Q0bfk43gGjKn09UwRRAX9c9ZQwLikBa+EtQDWE
	 G9a7Exxaa4GlHiSV9Zg70K7lS9tspu/IMfeICzNNsL4NTKZOIz0bKBdfyreCsg5riu
	 2Z1RhFD5eBjHVXVWHok8678xOFjpyyumkkEJgKoYlghb8fyndoImxIvgXHLFwfE1xx
	 RS+a/TA/lBBZ/17/qNSti5LAzgIl6YpgwgFM6cDhOMQJ6r+SIVKuH7aa4f7DjTNcb+
	 eef86Uev4M4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3B6C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766979357.7147.15744588483229018829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303caf842ab8efd1e00451df927fbe8c35a0a5a3c9c8993b658de105d02d328d
Date: Mon, 19 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747669793
