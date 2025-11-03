Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9DE2D321A
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762156794; cv=none; b=eKu28npQVP74Ao2ZKmyl0px/66q1PMV2SKVZwsfDYoB8T+XLTC7e1c9hOxs/dK3tZIwvHXW2kW1eF5vfcXWIhg3aU1E1RnhCO3oMYaRJ+epW9VNc4sfJM0Feza7MBvUzhORRpMxAF7RyHBAQg1CXKZfpUg+PhOURy4UYccFEoEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762156794; c=relaxed/simple;
	bh=cHoKpg/4efgAdApGwx8G+nNdTmdB9S0z1SPzuqGW9Vc=;
	h=To:Subject:From:Message-Id:Date; b=HtJqTkpN1cevrrLSQin0x9w0pSBWlUL/ZQFRaawQcq4nVt8+cJhcPbUtWBBOgTZ7qxiuHQbOct+QT5pPkWryrNsrNjVZT9hUCdS3kcXmt2o115gDF7yvQ9/75ckFfHw68JVb2QiDshZSGiVHhGOTGvzzrKJvHGUZ+o4bicVGSnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5+s3oZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5+s3oZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DD5C116B1
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762156793;
	bh=cHoKpg/4efgAdApGwx8G+nNdTmdB9S0z1SPzuqGW9Vc=;
	h=To:Subject:From:Date:From;
	b=F5+s3oZhFo44degaAdh3LvP6D/LHMnjUHlAObBIkKEzxed4R5rP1ei56twGI0JjFo
	 XOyagVCW5TYqsbdwnijHGSeLF2V3TXXNXcHS1dtgUm9xOcGEpeeUgdgOnXFIOTacUA
	 KchG4zUCTJNFQ8iu8EAdoL/nfq32O0Ohq78pGNvo0H2+loyQYOVI8cxzumSmtjmkJS
	 2WFOL0Zlh9r+E7NL58SUyXSrZDO4A6hhlYziBAPKSBkFCOeoZZiAzBypoulWVwwBSX
	 6V6XGzYpvhT2nHrzE4Uum/7v+AYScEQ0W6ZuZ+b2FMAxq5WZMYoA3nJ68SSthBvTmm
	 D6UcgecdxAGnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45CACCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215679364.28478.16078660603183386880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c967530cf150aca536be130833083560eb5cb8b465902a1ce7e5b36d4b8571
Date: Mon, 03 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762156793
