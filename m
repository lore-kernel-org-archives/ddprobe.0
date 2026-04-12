Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E5D3090C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775984854; cv=none; b=sEmMZiJbdvaA1TIclNgJdsNd6GDXTXNaxEEE835s4C469SLTAOeQX6PhiA5MwCIKraR6qtdcW3NfOsqHCmxGNlaclMXmLS+Goambm0vbqJBNn6yuDffxKe1bh6FVoqbHxl8/KrUDNZheFI09Zk+4mfC7zWRDN4u28jz5LPQRmCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775984854; c=relaxed/simple;
	bh=9WrnrFZHnNT+rWkRuQ4gYAZmmVsxU9xwicu1gmZ0f+A=;
	h=To:Subject:From:Message-Id:Date; b=rYHHNdhiYkLp2FoncLcXw6z6SXcNkVzCtSpyh06PX4GSNNn+f+5PLhnYPRbQdKRAT8F6Xf+s+fEmJE7nQZttHns/xLCXWbn/N9dGkPQ2G/FY5jyLNe6/5HAztYN5TbmTOu+jnIygVjHM6kKjQawU1dAWVkYXCkE8kGYP7BJyqnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaI6DGmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaI6DGmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DA6C19425
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775984853;
	bh=9WrnrFZHnNT+rWkRuQ4gYAZmmVsxU9xwicu1gmZ0f+A=;
	h=To:Subject:From:Date:From;
	b=TaI6DGmq8QF9GP4SMIEGGnki0453lxKjTs3Mmjkt3hfcsIjDXYmO7pG69irddvtye
	 2Dl1eoZDjeUqQ0wKC5HZYMinZH0NVqUMm9brDt9Ow+qVPjbjohia10pcQX0Aa1NI4w
	 sPQ9KOtfFI0cFqlJKEMLKWIVb+4qSyEd/Gd59pRiPhpZVLTaAzDn6K7icGBwOeaOQD
	 9VZ+DHyXrGrLAmUKjSU/n0POPEUyqGBBFDR/YECanECYcMWPpMq3Ow7gZZGwLioYGD
	 5LErqls5/gqzAXxVc4ehWaBQAqd58CZkP7TstQioPF5pj5EQUawGxl5PfhQmIM9z03
	 BSpsuZJIY7iCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBE7F3ED6C
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598485368.27032.15596590243231329505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f08ec8196f15572122af6caae9eccb02437a7124954180fd7d6f23d7997262f
Date: Sun, 12 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775984853
