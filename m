Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAEC2144BF
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743430794; cv=none; b=NrBox7Ioa2pVpEGLXs+5Zo4t1F992yrxq9J6/30QfOo17SYBybBZy49CyEInJ0ULvX9IKbnnr3fBrm6bJv2olrj9wNh4Lspbl60lxLtdxlnExK3ckHJzEq0Y/sTVHptsRDl/Mv4o1vdUEmGEU4ygZiCOa71GNNCxo5+HcZyA0so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743430794; c=relaxed/simple;
	bh=/ZqhBDKCN0m7PAxQv/ipz+pGeN8gZtfaQm+Wimc3D7c=;
	h=To:Subject:From:Message-Id:Date; b=CdFIG8LL9k/k4wWGTTM3I+lpeJSfrKb/+QfGov1tHUVGsbQsHujClojy7hEtYyz+ubBIeJ5Yay+Pxj0S94Q5/FlTbqNbwsF0hPOk97Ld9RM6AJQvdajBmk9DVL1ExRwdt9Czd03QBsXghQbc/5zKKIJM/zUrJDuht2UntIPgwbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skT8Gbqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skT8Gbqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BE9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743430793;
	bh=/ZqhBDKCN0m7PAxQv/ipz+pGeN8gZtfaQm+Wimc3D7c=;
	h=To:Subject:From:Date:From;
	b=skT8Gbqc7eA4DxvsLV2co0WrwWTthhJH8SU7xzPiE1yU8sAB9BmI5GdJY7pAujoFT
	 eFwi+UYBPucAogt/DmzqZXPWcQXOWEy9sQYNSeQULSauf4apuxfH2tCtWd/LsyuLO9
	 qUgtXFhb2TOEiLEK5mqoduF7cNcJakR2VoVLLYzDjZ9V3761UQHHquv1Nyxu4Va3Fr
	 sVTebFEWr+rKuS6iEY/aUsHjD3XFhvIQ8E8Z1RSXvI+PydpDyYkQ0J/mqpto9E9DpG
	 WP18Z1VJY7Png2t9b5c3DAN6INea298m2Ug5CT4wXCLu3dga40paLUaPyMcqCkrJpV
	 1Bw53X6MigYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAEAC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343079362.8157.12143502725291931623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5aec50d3ef163c3029c4a41a8cd6d2207200cad52f9f0e204077fd4bedad91
Date: Mon, 31 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743430793
