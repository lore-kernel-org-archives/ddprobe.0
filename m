Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300A41E480
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747200594; cv=none; b=q+2gSXq2BOikrrxW/ZSRAFRimnYSrC0/d7u74JQbbXXlMqSyr0L+j2JAwPfUDF0J8Bo32wSoBcsxqTbafJm6UhK3FSkdNyHcHNb8SZiTc274zKujcXzz4AQQVt+YCTPPXh0MuFz5Rag5+8iOcjFvsjbLAMPpaChZkjl1OOfG0xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747200594; c=relaxed/simple;
	bh=zj8Q9xotccwvf5pZ6AggbDQRMsIN8tiDYHY+vFPqmn0=;
	h=To:Subject:From:Message-Id:Date; b=HjyrOgWzRe57TGeqmF5TUkOiKogt90ZDzyH/dgzhc+IAG9mBrKS/2IW8R7RueRj81IkD6XFJIck8B0tn6HUDDh7L6aqT9L3yiQ8F1XTksDIFtsHwKhAYiJ38EAmhadTclj7283/NKJfxgm81WO++WGB4B6xoN2/m4kJekONyTto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvG/9BI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvG/9BI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A132BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747200593;
	bh=zj8Q9xotccwvf5pZ6AggbDQRMsIN8tiDYHY+vFPqmn0=;
	h=To:Subject:From:Date:From;
	b=WvG/9BI7vvusDOHsRDvOb82BYuXcr4jv+M8DBsbwciecUZk4GY+mjuyIYt3+k4ucu
	 cEU54oGB6F/yvHFyUrV97+OGfl5c9MMRSwtGzEmekl1ZnQmGX9qzE6P5LHzq0mg52C
	 0Pfsjq0GYy8U+xr3ZV5wMRpK0fPSkwwQjnMlldNeUzHhmWPd5qxLBOmPv3Al7mQ8KF
	 RMdZ43Swxp/aU/d6ubgZ+4BQj+JFmw3tsVrrvFIKAOO1FUbwv0IbAI3vQp28Keyw87
	 5V9fgwi2XmSDAocN+ReTCsqlJuRFyBR0yJPk5fR5nSIYj9f6Xf/6rPhcWEP+aekmhF
	 flS/kbfLnJK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12DC3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720059357.14760.16545636333662202439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c92529c12304a88546a29f66133afa6777f7d6770f5bc33b56dbeaaffa836d
Date: Wed, 14 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747200593
