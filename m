Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F51A6807
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783862314; cv=none; b=tJQZTfl5VsE7EXA2tDKxrgvw3BY2NLSwHKc80bSNvaulQNjMZE6A1TgwkuVYboPUVw+RpXlfOXclNfxBZDyHTtPLSMWucLAIsXz6IvTrJbPqBx05uMr8dNFXO8vQZzbihpP91Qg/HZShGvonquyVFQJ0XPqVyHaP4DDKXDannWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783862314; c=relaxed/simple;
	bh=wPuyG9lhKJW/8oAf8uDQXxogufpJBgxxjyGOx7DtWDo=;
	h=To:Subject:From:Message-Id:Date; b=Dy6mEyaf7pBnyP5cCtP/b/9kfJZLApSThvV7qHs/kLXX9fS+s0Bs/a4u4foYId8E/rsSPhoRQrqpO3EAMJ68D9sSlI5Dpe3seG5ezMq5VWZOhaMleJ5m0N+eFzy0yq4HcCF4xGz83M/D6p8W/kMLOV9ibPGLEcBRf2nwvULhd1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX2ZB5AU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX2ZB5AU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07EBC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783862313;
	bh=wPuyG9lhKJW/8oAf8uDQXxogufpJBgxxjyGOx7DtWDo=;
	h=To:Subject:From:Date:From;
	b=FX2ZB5AUfKgSJBHhcL8iXSUOTD3uDVkLgGQKh5KAgfuano/zNyohWPzaiC7wMe1YD
	 BRzRkNmXVuLusvQxjjI7cleVrnMtI2+H+l/3pPm5qETYf+wM2hGBB3f90v9i0f7JEx
	 +ibHIK381eytv2uOXLCQ4qi1/V7Zwy4Ck5SOfO8e9NH/mRUjNyeuBWSKdAmBCgUOyb
	 iJ1AyxWetbWTYLC4uLy9zO5DQ9CLlHBjHaGHUrobOfShIviugBWUw8tPX5SMbiqpgz
	 Bz/S1LdVuZwTRJoKyA1pVm47IqO3jaIndrL31iRzeUQY4Gel3nIGvTrivslTZnnDLb
	 Nd8KtXSlxktbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A815CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386231368.833.16688772701725923169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e695cfc5af509beb93a856b292c70b9f942c03a909425d63bb32cc4338861842
Date: Sun, 12 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783862313
