Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6061E4BE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749995394; cv=none; b=X4aioqol441/Nj+NaaMQC4oMSpQZu6+Zia17KggwFfwsYxUhKJfX2gGmmqR4HgNUTYhKLLOTP8u3dXCgS+WFP3WlRuhkT3oq4NPhxSdvrOPBrhvBq7AsmdKk1E48X06KHxCrh1oFz5muDW2RlZCLfef5M8SXnOLTfPyrOUAvCTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749995394; c=relaxed/simple;
	bh=3LOr95jzGhppzjcnDYP2wKVpPg0umTr4V1GdrRBIK3I=;
	h=To:Subject:From:Message-Id:Date; b=DctsOWJCIls3xN9r2KR4vZXhOrtKgQ+JzMlyHYK4AQVmtWIEm6cqdVQNoa3ytKV38n8+IurMzsO19T9LAbfZO8Tn1t9nd/Q/XnzqAVSx3pTyz4WQz/vwFOLpTtmC9OUByKzA50MDkxPf0lVZq8a5h5YixcKrKRDASQBTudei7vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vi4t7wty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vi4t7wty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B7FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749995393;
	bh=3LOr95jzGhppzjcnDYP2wKVpPg0umTr4V1GdrRBIK3I=;
	h=To:Subject:From:Date:From;
	b=Vi4t7wty3Jjzs2m89WPu3FRZwdGXEl0RXPcxRQK+bmoJJPa5muKngNuRQFvWCcaTw
	 IMLVYBI/zdpvS9qyxlAzvlp8jKsaisznNgbUHKNayWiJv9Ewu/aghnJvEq5JQT6RqM
	 c8hfomfoOjU7uSv7+0qYAAjJ5qS5M1/t2dAgkvsPkNzN5zRcGx733CLtIoZFqeUyoh
	 dVrUorFoQMBeVN2ApGEN0HArpfMLp1H5N6KGTiNfLu+SBuy33BOX6fGz1bi+5XLIR0
	 XGvPfTEHFj5+cgd0OEBsHCmeOeaPu8MRbOV2Y0ATbegwuVYMLEWSQZQh/GtyqnSG6d
	 E5z1SfU5E0azw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E20C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999539358.8306.14209498444072212600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6838d442f3092e01ca97c047f9230b4f32cc1ecf2439f6de62c318232655877
Date: Sun, 15 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749995393
