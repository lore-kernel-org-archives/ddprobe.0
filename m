Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF2F1531D5
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732855554; cv=none; b=LJZoeZaceNdmI5ktO0msQR4Q5A1yooUKiOt95dC0p0phuOON12WtkDMZ3aiFsBQ91hWq1LUH0E+94c6EcOKbZmsPmqDlAE8hfiRWBwft6+YHTzOnClxnz+QFEtNX0fgWxWiMxUOuBKVELnejYW5RNtLFS7R01YcCEEs+0I9Wdec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732855554; c=relaxed/simple;
	bh=IgboITrJRQYANz+6A58TQVIqHvAaAHUbMwJAU4XwOyg=;
	h=To:Subject:From:Message-Id:Date; b=OhD7GPX4ok10TnDRGVJ0/3cyxaDtot+07hqUILWtbNbEqBJfEn2+D0poLNgeDZuWARUGR35SsZshgf8ylxU9CQTqkkJOMaZZBg43lcywUVnu2fkGitnybQop4T7E7cLOqYgJivvL5ICJG9+P+Ow/njKNeDaH8HmCFBPYRbpPjDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrjsuN8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrjsuN8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1096C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732855553;
	bh=IgboITrJRQYANz+6A58TQVIqHvAaAHUbMwJAU4XwOyg=;
	h=To:Subject:From:Date:From;
	b=ZrjsuN8D3YowJZAXD6b1rYGN2v9Rai7N8klG8WhZ/FB/sOPlMfVTOK3zZXLysRkFp
	 OnssgbHCZx/Uu+f1opQb7ZabdhdQYRF4RURl43bsYoU2fI/xMMH1SeM2zLeoRu6LVm
	 Uje6XdKwUhZyrUXRV98fxnEPyXQu9qykSSUImKC7SUE7S+auJqHujhtlmdfgJquK5D
	 wNkZQwnRay4ggQDW1GUjScI8pk+6ydyn8ULDmdvYEcpQKJiN5xqA6Uvyauy0ffjzzb
	 EQqo0PuC6Vk7xZ2TUBK9LhCY9124yvFSCHYIYcl9tjvkX+0JFM8oBk4TXRmC5s/iSm
	 a1gur8XYzUF4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9232CD70E16
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173285555358.28880.14821401714457311884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc87988766986d7d955c285f13c49ef72018df6a902585a94e5e554fb961e64b
Date: Fri, 29 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732855553
