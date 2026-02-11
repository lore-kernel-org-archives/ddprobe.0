Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4B233B6CF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770812694; cv=none; b=uYHSj9H3h4bQwsinRw7F+u87Jye7f7UW1qU6NjgzNvwHTPXs3jHJHtmLOQ/ThNL5wDsyrpzBcjkYiiJ7z5y2F99NCfXPFoyTIHw4lkIc5D4RYXZ9l9eZoAlF0y/SG7aMtS+B8fbJvaZffsL+PbrQWPVnb7kjsmYy7pYoGoOcnwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770812694; c=relaxed/simple;
	bh=Y4+SoGfk1TjMhTfyQMhOWJct5JpEdQHettRCE4xl4Ek=;
	h=To:Subject:From:Message-Id:Date; b=O/k8sbuzvlCJ9iUACuaQRWkWqNDn9n2/HhwZcPzjeOmTuyeouRPPYmFqiMljriZarHaIDzTCJVFTNKz6Nxa/bB4dQyn/lvGneeDAaep9Zev2e1OvM9w59yftRYHKd94whL0RuYQrNu1RN0Eoy8Fd6KPxo2ArSSmyGv4ybvsxoqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwDomWLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwDomWLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD449C19425
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770812693;
	bh=Y4+SoGfk1TjMhTfyQMhOWJct5JpEdQHettRCE4xl4Ek=;
	h=To:Subject:From:Date:From;
	b=DwDomWLDE+gh3mbJpr9TuRu0uKhNjEocS4jmfuj8H8fLoTGLsfHR/6WyUtr8Qxmh2
	 sQEWPfuDcp9ns4PEtPncROVG3nqxurqV5vrU5m9kkB9T9ykVVrZrNet01rn6h7zDEV
	 CibQAO6wDGEehhFc9SFiOdSnkGYjMVOUfCth2QBFwuEGqp4zHvWv6SeVKaD3TF6Npt
	 u1BMursczhVYKXJo3HMW0Ro9XJ4dpbFIE0HjjnAdiQHTFmM5Dv93TRObZoMCoLHhVF
	 WHwRJ3mWbmv2C86Cu+M4Figj6IEftcQfZYw6CYADn+HISGm/JgH253zV8huN1JXFOt
	 dnwVZw2T5u6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DA1E9E2FA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081269366.10878.6000145831263056988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be5bb638e7f4a9f033b790997c8476d06ec01b33816a3923061ec4d5d521c84
Date: Wed, 11 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770812693
