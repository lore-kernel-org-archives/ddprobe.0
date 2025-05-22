Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A3C2F41
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747918794; cv=none; b=Gf44XhKk/ut85ZavRS51JA9oiaSvrT1IjhgnPxVbs6OBr09MXEmTRUae6eBacZCN/O+oL5SgJ8D/BAyFkVvbRCfZeeqhG8dTfndHwrKJDQQrqPRelI3zi9SLVd4Dfv2jH2kXjn9O4YWqCeXMsVwAZsSP6C4fbg4ZNdCg66ezkRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747918794; c=relaxed/simple;
	bh=qc1QNP/yRKCkOcCT8XinJZX30MXwx1Kr35YflGkWUAw=;
	h=To:Subject:From:Message-Id:Date; b=by/ueQR2JidUaQRlkNZnLdfcy54BvolyM6YnGFh0mysa0qEm5SbUjsFPJIrJYCUAdYhOqup6pykEC3NJ48UXfgHblcdMWD6x4RFErvhuj8hFv17I+mZWTUNZF/Gi8Rc+9lYWyXVYS62MfTZHdKyu2G2G8qZ91zLhVzxn3MOuVjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByaLkhWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByaLkhWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9F9C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747918793;
	bh=qc1QNP/yRKCkOcCT8XinJZX30MXwx1Kr35YflGkWUAw=;
	h=To:Subject:From:Date:From;
	b=ByaLkhWax78T2VaYlzMP+9qb8M2ieUSGXjHb8+JU1RmQF0IgOSloVRpPWPGAguCsA
	 TUO63TtEyEJVFBJhBwkW+fb3/zkHEIJ17AbDYVvvTkn9lyiIRJiTBdVXZ7epcpkIs7
	 95TrfXQAEperi9WQNIULF/a3oWHqBFYk/hEuDHeZTTvG33/DuhDmGiFFA3/1iafmDg
	 OVyZo0mkVgmiT/vvQDmTReXjTE64ilSkuRzUWnSMF3XURamlztrQ2brIH1spPnLy8y
	 IA9lEVd9yLcrckIxAq/0TAq994tqdVrJqWeCz6RgrreoVGnWgQdt+DDWTnj2mSNIOh
	 el7dQsTwKp0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A1C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791879357.14699.11673243483805185854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ea506c41e9bfeb42d814d8ffa66fb98e8f655e47a7698a33e2b25c61e16d1c
Date: Thu, 22 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747918793
