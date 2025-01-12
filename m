Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1A72CA6
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736649954; cv=none; b=Wj74c1nDwXF+iEcNJjTU5UkMpekDLlL7m+VJGyP6qJT5lox0yVsYhZtjgKVii6zA3GRyscb3sAPXu14oqM5jGB7dwzGU8wMwfTNIKBS2wTPUNq6Bvc35UiQ8J3k2tJGa7yZrr9Gfx09LrwX7IYAzJoWh+Hkem0acnj1hJb3ptb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736649954; c=relaxed/simple;
	bh=wF1jCJVXys566tni49TfJIvlYRiCWlOez0YdaTlPFrE=;
	h=To:Subject:From:Message-Id:Date; b=F5Vvb/w9zPFOuI6m9e0Iyi0wmEw+b7K0ry8CRrrWOQMye/YkoZ7NMqvHYyqEQ0TTxKIBLtXzA4KR+80fhtY4fz0Xow1CM8TbVb+vNO6u8dPIzKAevccS7x3Pi/UF+kKTRPsLnxbwZYeaIMxHB/OrGIrzZOo7HsObuN5nar2guWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuK3YGmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuK3YGmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18AFC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736649953;
	bh=wF1jCJVXys566tni49TfJIvlYRiCWlOez0YdaTlPFrE=;
	h=To:Subject:From:Date:From;
	b=KuK3YGmAeEAmWp2W0W2jB3vBI0mmBD4DH78AItWncrjViYxnUxSgd8gf1sE8HQwgM
	 uvVZo9s+i9Wi4+4EUkFsIyuOSF00VCZ+hiPjq6M2dxDiXna8OISxHd1qXJDrBrrrPQ
	 TUvIsjPaQw/25fZ1qdxaajKtMFngdylrqFXcHoD7SCVkEwL9IBiv0r9EL300ffJyWt
	 OSYxMmwoydaRtxANZ48QrklIgQhdtxSkCJOu43sYEnRp2TMb5ljXSew9c/ysRbOipi
	 QiPNXI3vakegbvbvCmFyhnl4+KUzCKBL9WYCWHQ4jV9u6y5kunJ6b9Qr3vSe3GUBql
	 Xi/O5sCamktYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B53E7719D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173664995359.21285.6810553403824331696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1634edbfbd437806d63282e21f26f87f53b784628fb137e16adc48745e513106
Date: Sun, 12 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736649953
