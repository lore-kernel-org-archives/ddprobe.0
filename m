Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3492D77F5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771090494; cv=none; b=MODAATuYFhAraCqnDvpDNLByQn5Zb3Ryh0XCEl0Gp5D+zEsSPoLXumIQccTHVUpuqNYAN6qspBjSMp+rlq6XzMDDftHIm3FFgdwORmG4cw9qwF6kWWQbhS+eKFQF0eQ/rUEWdi2kyWar3MM18ZJiHdQu4UcMk02DC0ROR22wpG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771090494; c=relaxed/simple;
	bh=3p6TBBxq8xlzDWKTW1JLhANrugciZxGzq9NX95slsRo=;
	h=To:Subject:From:Message-Id:Date; b=ip4LkEWBS/alyn7AMzMJAhfXDkEdS4g2zsz0xn6VvedCLYItkFGA0bBhEQH6/fEKSOoO40kQauRNFD+LMVvEtS8xn4hxj6nxvZxSyUQe+K3tCGlDwDcQDUxChIca4dXiRRt9GdREKWuTJhR5x9gyP8w+qMT/Wke9Xdg9FF5XP+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2WDqa8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2WDqa8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76D9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771090493;
	bh=3p6TBBxq8xlzDWKTW1JLhANrugciZxGzq9NX95slsRo=;
	h=To:Subject:From:Date:From;
	b=Y2WDqa8Wg6mrJ22TXgSKKx5wKDI16aJ+KagEqmGhZykI5kAPVnmQvaf8kfImV7D0c
	 zAEj/NX/erUGI/Zl254qTudsjhuBGBz5EacmTbceEj/d8Lqr/HeOpoiD94MOWjo4ZS
	 dXSY6XtWzfjdIzovWbUX3TjXcPA0NDHPbxZKh3CzOlqM3UFCUPVf46f+MqGvBrhHSy
	 a0vt69zdhjLVPj80vJPhpYwUXMqee1JmAuHTZQtmUuV05JFP6W7o1wvchM53YsbeiY
	 GYJKWokrZY6tk14F8zUb0+HH2+UiZn2NyXWaSiePe6JzeOjbkGclsvL8hLpoaRpkNs
	 XBDNCA1TfwwOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C9FEF584B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109049360.25565.8640936894754665924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7136360234ac934da16c4d0b1852931610d8cd0759603a573ce5db687b1365c5
Date: Sat, 14 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771090493
