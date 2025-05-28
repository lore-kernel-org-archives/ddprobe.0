Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305161B6D06
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748454594; cv=none; b=k9brJCDxCEGPwzN/6Gg4RUontB6arWJETy78+aRB0ZttKhZ1k5kuH71BbMzAgk+TbCr2Q391sNzbeYl+shMxXuPzLmXrierQl8BiG+F9hmr4Hdn96K9zlcZgP+28KtngqYD0vfKzrQpTld3dZdNAWIsd39slvQ4ygwBXVGkEDuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748454594; c=relaxed/simple;
	bh=ecHZTFY+2OHQ7YV+3NPMHGiyt6PvXI/0aKgbkpOoMcY=;
	h=To:Subject:From:Message-Id:Date; b=G57XYLJeGUWo9ZzKcLDB1IvN56bFtKYzZuf+FToqz4ze1FW030kWzP9RAWLaSPWNhAYnGL5X8/EgAMZcKZ6SBxoy5uNG7BxFKe7IcIiThTm7e+XEX4dOaWL+qq8Ly5vQmf+cG3DKsibJts/6mu5PEo8XDwbEeQ3y/pji1fLBoRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAX3BE6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAX3BE6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C0AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748454593;
	bh=ecHZTFY+2OHQ7YV+3NPMHGiyt6PvXI/0aKgbkpOoMcY=;
	h=To:Subject:From:Date:From;
	b=hAX3BE6vtNpEIAimOJh/Bkq9THLE031n58wpBBxUKL/xitDc/BxZkln3iR8PjHhUn
	 /61esuKo2q8MzitNRnUneJdjCC/ScfghH611xiJ0KAuJuMRcnTJHHh50cboKzCD+w8
	 U3FGmC/c3sWlze6IXYTGbcNm4jjAwDw55F3beSHJHnk43RTLFWyYBiT51z5SLZHcYI
	 CqnI9tbFGUZnx+0SxkehQFj66ibTlCkS4jR02vUb0JYs0VJ3cRGa88TW6t0ywdEmAq
	 KNKeVFKhiP/a+Lg71b/D6+M7hyx/qHwUTH5SYenvzEzn7VCFLSOPfx0smmBwxybHcE
	 Cq8avXUaWCLBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C57C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845459357.12452.3643709833098314476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143ea828dc498415898cda027413c2fe32bf4acba75b5d0b3b06234f79986d87
Date: Wed, 28 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748454593
