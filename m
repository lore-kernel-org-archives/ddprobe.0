Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767E04DA531
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778692234; cv=none; b=SLmI5rVc51dPiQbyyUzfTCzg2y9hb2XB2fgmeFslTNM3mtBI7+Z+JpsKQGs6Hg9FgYgOgN0t7vlcyOnccuY2FPdrUfQvWi2BEjDz+iOD2pUBTBgZi3wUpKGFYKnm3bVyHN8O+FJkFWxC/GKdpJ7js5ssD+S3l+lwAXoa3P46V84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778692234; c=relaxed/simple;
	bh=jpsxeO4JVg0RzHq1hWHKZ2S786p10cDT9rE/plU81Nw=;
	h=To:Subject:From:Message-Id:Date; b=j3YxyINNQMywxn60qGQ/2Jg9+cObtIAbMu+WQEj8AFILaiJ4YBj9DhH57nSE0tE4iPQiUyBTeOrAF8sv1OxowABsFpiZAjfw7AyjB6HWM8IEeWaowSU3A53iAVosY/hhJ6qV41YAVdZBthoi1qQU8X9XMHXkb++zEnJDCIgjNV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7bJqTwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7bJqTwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A17C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778692233;
	bh=jpsxeO4JVg0RzHq1hWHKZ2S786p10cDT9rE/plU81Nw=;
	h=To:Subject:From:Date:From;
	b=J7bJqTwbRk3VhebQCfCm4aKo54nkFYTgeGX4CZQCpUKVqmid0mkyJF0LXJxEsDhwZ
	 bV7SUZKv9zVzquiUus9ciyrt/EQjk9NPRpwfwSHrmNHGQ6f8R3GG4eXYyaI5ME+Kdm
	 +OXtD3oKEpqaa9C7q6TCK0LXysaMwtw0APPVBpGLTHbqkRJyb2w6uGDUhKL7rNWq1/
	 yheReWE2Ee7tqOAmv28fiQbtXyqoZZeenaoTDT0PNPZ7Uh1HFFPuuKoSRCpgFTWVGg
	 cnFo6eVAVQBthcmgQtepaw9EZDwZEqOfP5982Fifi6MKxNpTd88W1S0aNbFwu8y4Ec
	 dKti5b3Ul8S1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF413CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869223376.22377.14737914689687011022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bd4deb10fcdb76781d6b348251e41fb3ad28049904222b0f09486fb103a751
Date: Wed, 13 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778692233
