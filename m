Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D632F49E3
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758582594; cv=none; b=W03V+STIvit2X5inhW+hjOWo8KOjgH9KZhS2Arh4HsDnj6vr+imZEd7c3HrUjPq3AxBgEOC8o3tBU7BW9e6nmCeD8XN2BL7ZHGwGv5+XW2KMO8pyMeRS4z+wsk3gPB7NF+nX1dmwMTnjAhEk8p03poxwZvIV9pk4Pz8pLGwJziU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758582594; c=relaxed/simple;
	bh=7bx6UKU0IQ/gU/UCd4Qi+DAYuAlMWJpgmZChCJsqAio=;
	h=To:Subject:From:Message-Id:Date; b=m9xwF8edh8UVR7lKrI3mTbRs13xtgMlK/wn7axWo+4MNUFleClJpUXQeGDGYQpkI8mGG6xKweGka8STvJEblbMIpWX1ByuBywJsAUIKp1AKcBtZaiPBxf/iCuGvRQ19rpERHtUpLLzEZElvdKZ3ZSzTTKqxnrtzqo3vWBRQFry8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Df7snjUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Df7snjUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C2DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758582593;
	bh=7bx6UKU0IQ/gU/UCd4Qi+DAYuAlMWJpgmZChCJsqAio=;
	h=To:Subject:From:Date:From;
	b=Df7snjUlek4/KqJ/ezDwkEBhzMMjgrM4j/coazeW6WxFJkjHNs5V4iIiBKfWRST21
	 T9fvLoJDn2RFlOeiLyILMlzEydBxUY5lOkBb3GdkzjaJEV5CF0dgd5yvkj5MLcjLHX
	 erQTWhiKujg3wYP40u9DPEuW7W4vougUQiunWvLxpj0z/iH23PhDodl6J4Zh7DIVkN
	 QVChgBTIX3FVAZs7b++MoKMM8MMrWSXM3lJxIVc17/+7FooG+hNnCjaPU13gjgT0dz
	 EmJaxKJ+AhMrQ700ciGvQ7DotsUzWpbNED/M//KIjRmcK5v/a33m7lXmIX3n6QRFaP
	 DDg4N/AZaEO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B4CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858259359.20536.2498780918515430312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55cd8738a8799be2fdda44e2adf574080377ac4576ce8bce1b2e64c16636476
Date: Mon, 22 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758582593
