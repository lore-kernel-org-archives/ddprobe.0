Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1C9F9F8
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716657263; cv=none; b=K6tvkaInZz1u/cG3VuxBgIe7yDB7V4mc0FO1j9RdYEcP5npE+ujxuFQKsOx3OUVhxJ2dU8Vpy+PdMM7A/nw5wOJTKBOzETE4bJ9tTqaNQ401vwEFqShCD9ler7vTEYqyytOQMUaoSQdl4BPsz3i8BicEQGmEkv1iVZr2ZVkMXA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716657263; c=relaxed/simple;
	bh=WNqoUIS9cC/md2bQWg9Z6+7y5nf0GKsRYYnCsiPv9Ic=;
	h=To:Subject:From:Message-Id:Date; b=XDj9kjKTm/+KI0PpPbNsPzR8RyQCGutTOb1zpeKDoGGJw/Hp0UC8KIOpHFXy1n01P/uQ/YLslToyhjB4Ajy1IbfUVPGLGRPI+invpqD9kCbZj8BUSEqaZSqiU1nDrwsMLxFm4mkWntqticjXfKAoqHxW/lxDEuBHCOZ4DQr02s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUPwxupl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUPwxupl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F159BC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716657263;
	bh=WNqoUIS9cC/md2bQWg9Z6+7y5nf0GKsRYYnCsiPv9Ic=;
	h=To:Subject:From:Date:From;
	b=cUPwxuplfvCpk3tPTeaR8wDE80Tdy676wvYAYnzE0EVJokQrYx6NL1qn82qFPjdZv
	 FXUIW2dVhObVkurneZV0MoQkYegvzTtLnZKNLavDBZzynYxQYvdIp+LtRuyA8UEPdD
	 Bt52JLCSnwMDpeh3m7VYd9+jTOSwQHUsRUpLHaNZoCCyJ8Pkyx8ZMRf7UAdSvkmmKs
	 YspajCz4qpsNfQdUuSSaqYJQt3t6JouxB+/4Jl+tolQYucRKqp/qD4crAT0WBMk9Oz
	 M1wPY1k/UoHzcRoEOdv5JzQ/UbQQvOyiv1hQjNC1uui8mC3/PXdU8JZvwnwXzrfvEz
	 ZkM0DsT6sEmIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8759C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665726284.14210.16961173359446772976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005d4ff51fda4b62b158e0c92f9458c7ef239b8f65bcc287bb37cec4b5a6cb60
Date: Sat, 25 May 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716657262
