Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278B733507A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765818174; cv=none; b=jpXavrfTayf++3U9jRVH/t2tHpxoJiYRMIuGE+4F1FQopPyspr4W5An7Hjm+8iG6AH3jibCiO2JchIhRXLdAUmxi+MafSRU8ZLI+KY7ijaVSLTL6/HokGjh3a7HKwQ4d4/9+jM4gpIuS5ndMrOi+61oaKBBQfgRkww5sjTLPXj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765818174; c=relaxed/simple;
	bh=yrzFQNQP5KUvyYPA+BcPaoKl+DMJzsOu4xBUuNOdlhs=;
	h=To:Subject:From:Message-Id:Date; b=DJCDRR54ti4AGPOoAwUobDJACdHNxhqtjCfKqeFJiAz1dDfyp6+VYmJZmaW8yp4zwGrtb3mN2CYuwE6Dc+1onnPF49JMZJv7jWcv610lguwPBl8d8pdrjQ3LmXOKndz4yD6O/vKEdtfOwjxCN7fgvawaPTu00MVq1NU9vvDrQtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lh5w6V29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lh5w6V29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAB3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765818173;
	bh=yrzFQNQP5KUvyYPA+BcPaoKl+DMJzsOu4xBUuNOdlhs=;
	h=To:Subject:From:Date:From;
	b=Lh5w6V29M+08SLu2UY7i0DAhGvCsxkNEyAjukin8X0yyoZ5y/20LO8Qeq7fWgWTVp
	 Elonq9nEJYc6fMy0tQIjtlD23z7iJjeyWavlc204P9LJJ6mPnuokmnP+tUmRKBAB+x
	 s0yyMpOF2qCEFEpCZ2ms0Ln3gHH38zKQKI1Hg0IHxjG9J0Es9ISCyweeBlNk9GL6zk
	 IgzdyThQ9hJ5hzbKg9eqJQjQ7cSOFtXt4Y58vX6ybgKpdwWcLPZ8oWHcOZjfud2NS+
	 WODtzUVe8QBr1f8FnXEslGEajv65AnuHIA9GQXoGZuPGbndmzEdt5+4DeoeWa28339
	 JaP0fYKoTAqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9761BD5B85A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581817360.30408.2375393607566290558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16173df23946514acb5d7a4a87a9212bc40dee5cd5c436b4053a30ea416efee
Date: Mon, 15 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765818173
