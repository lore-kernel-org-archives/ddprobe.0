Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0527D34B1A8
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774036494; cv=none; b=LC+sN+/dCA+1YpO2D+g7kutIeshsvVPRyf/W8n9mvA+rzkehGLB6jNedOIelgxFR7Q1AYyRLg/AKiq2KR4AA2YiA8wiOD0OVJBED7lEQvpjQeP2NwJFrVx+xGPX4jpIJqYRo/JZNJc4mlVqQyugAG6EFeTCxwM8t6eI2ZLdJzCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774036494; c=relaxed/simple;
	bh=iS4DxvDDZXqODaAhHew+ahBaQHLB3FmTg2ZpzJm5a1E=;
	h=To:Subject:From:Message-Id:Date; b=Ccnus6NKzKtUBvomn5qRhay/mENoKnzAaEhbzOcX+SxdTaeiPHPcP0DNU92S6d/OKX8YEKeCMOfi/9fAN69JAsqI/jUNMCZJsbxZ/nvClvMD2ZW7sWikh3Ie9csPc1XPvmL4LoxUZ7LFEZh2jCbmqZd8kJpCAYP+XK1R9PChtXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+ftrqTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+ftrqTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB93C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774036493;
	bh=iS4DxvDDZXqODaAhHew+ahBaQHLB3FmTg2ZpzJm5a1E=;
	h=To:Subject:From:Date:From;
	b=f+ftrqTciWZUJ8vkBow5C/yRJFjHED2Ehg6CydkKGuPBsP1KblYDMWMPOdq2avTp9
	 X9vpZVJnPREJwAMNG/l27C6hHk+dnyA/nzBebK6tnz+u7LFJ46ReAlTv0DDHvWVFmx
	 NIbbf+r6CDAqByVLu1BcPcVM8tiXu90WyuhWOv6Snc77IHS++LU7a0VkhcSzfERerJ
	 Snqubb0hblBwoqPpr5R4K8NNMwAPxBYzo60x163JBKp980dkKQ2CYtD1yWLaRHVWpw
	 5huq6MJ2dT8UvvKW9DkybAeUX7s3CZviyQe5yx2SWbA6r/XyQQ14GGBZkDhd7bHZTl
	 crhpGw5ih9SVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9AA1099B3B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403649357.22341.15460413952314824519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371256fed77f7a129fb2d606422241259e06062c75100ef4990f942761f89d5a
Date: Fri, 20 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774036493
