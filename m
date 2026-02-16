Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E3A234994
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771272894; cv=none; b=K+KWm6bqGq1BpMzQLnHjpXhEAWL7IZ9lWO3UmW4alc948ztW2fuiN1+A+vCODD92jUCoqSzLMgp3AKZM5gtHNdGBtO9o7bxc7op9imGQPN/abTmM7qdhGcNL1RU9MZzSJ5Qkavy2911QUEaTWY8iJnZITyxsQzWK4yOTprY9zwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771272894; c=relaxed/simple;
	bh=TTvg/f+ZBG+sVu/35/xtYm4ouiVdjDpC24WfcoWUn/M=;
	h=To:Subject:From:Message-Id:Date; b=TZW757t0bwPmt4ZMjw8GG12yjEuHGbY0p1EAFtcWlY8f0QOUBC6Bzhe/1DaYNlmX1bSLEpu8fVW8Sza7muKRA1R+zRqBYNCfXGfZOc0eOv+IM9X9/oj1DluXWWV0aHRbLKsMnfx7oTcUHgQN8DCuh4yqmbKmz/3ClHTPGozR1Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMb3+mWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMb3+mWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4D1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771272893;
	bh=TTvg/f+ZBG+sVu/35/xtYm4ouiVdjDpC24WfcoWUn/M=;
	h=To:Subject:From:Date:From;
	b=eMb3+mWDHIJPuVInzIASXU2GH+AUbSCG2se9rKhE/biFo+iYw2lRNyIt6d69SPaTC
	 qtlTula/XXe/pyNLRx5XuGmOD/9XRHKP9dF3YYDtx0mkeOkQiHrUab58+N5ujCgABY
	 VBb6e1L0qqPh6smoSkCDPWVqzwe8svmw7cs5aUkfsEi3hke/0v14YRh5auwDaVCOnc
	 K1B3S5LL3v2lrfjWbFF5G+It3ruG2xaZcUzzVGnlUDXNVkLWUxV+ZjGJ2aYfPlR+Tz
	 SuvIAeh4r4ibRNlfDWGheoTO6iGydp2UEJQE8pc2/iCMe4qRCQP3oC9BnGZEEeuiRO
	 TnnHR5/RneOCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3DCE83830
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127289363.11339.15717426399610538222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306b9103ad76c78508ecf72367df6a422b10b5815fed1e4542f1006966b7d5e7
Date: Mon, 16 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771272893
