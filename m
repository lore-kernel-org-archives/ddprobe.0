Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F215D52F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714583543; cv=none; b=ksAXYkiHlPsNTf3uH8+6ZaCcSV/geLHt9IFzhNHqO1gHkvtEfGWp+7WtcBEg+YlZtMQDLG5ojeVRvb9m6MXRIvK+zU5xpyT6MCb2fRfWHN1Hj4DdOpHTJrQVzUzUEyu+biGu4lYFvME6bGlwRwxxwhJxXa6mlRnJ6LpyGs0IeGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714583543; c=relaxed/simple;
	bh=UriuWiLqCCfAVfWx8/FxsDx1tr785yiRpxBCPKkMWa4=;
	h=To:Subject:From:Message-Id:Date; b=eAqtdAz/OoeESq74v4J7Pk2YMfXbBrPIA+OPxY45gYLieAP4OrCTqWnwaxhqyCD2J3TOCCXVL/8EYZFKW56as2X9Qzi0agWllRcfvL63KD8EJKMmvcP82t7iFCUIQ4p7Xvq4Rgl0GFRflFZBVSfPWmXCpQSq6ZKuqO/Khfibo4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUpwMn9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUpwMn9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA023C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714583542;
	bh=UriuWiLqCCfAVfWx8/FxsDx1tr785yiRpxBCPKkMWa4=;
	h=To:Subject:From:Date:From;
	b=rUpwMn9HL3ETvwHyIwZF7RYQB3UogZaiMihdluuNdmIgVKn+OvWYE4Z2iITuUNW/8
	 20oVL4MZY95mOqI5ihYpRoLZVgn4iVtr4tN9CpjzbVEfYIAFbpIxushaWFkxJCEfdv
	 ctKUYOwChmuh/Mr0v0I85v8MbPcqWndWbwrJf4lYacOmUaFkv2h5dihF1eOh5ITX7q
	 4nXSSqjqbPNuABkZcVWsuUCU5Y6kJKc2QYkTihtH9XmvEg9VjeOFWh4fg+kkWa7u0W
	 1dYZP3vWacl+/Kzqcvb16C4VMM/BccvEeLiELdYL1LUoWYBr2HDjEna+/lca+N+oBj
	 fYDRoscnO0O6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE26C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171458354275.7605.18163246747823568418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8021a7a7c79c6b128affef67efe5393e09532407509eab1a5b536b322633b261
Date: Wed, 01 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714583542
