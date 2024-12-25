Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3365913211A
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735122954; cv=none; b=KQj0BJ/9uLUh7f0+0O42KUHuAzmePYe/XhSZ56ZlA54eBFSz1sfeDKpsr0KGzFXyhWf12/5W4kDlL7xDNiDrFNW2dPyP0lDKfqZIazisM53gciYj90lBhC8magbAGqzLLRSn/QNPM4UJfi4FqkQOnsggf1Ca2m1hFKwlCTtUwcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735122954; c=relaxed/simple;
	bh=HuIvN8EI3j35WPiPwYZ9tQIVyOCS53qHYQqN99iZ+y4=;
	h=To:Subject:From:Message-Id:Date; b=Kz5+hsMjnPWxn+vz6YtfQKNZceu//pV151bH2t8zoMarxEEYMmtg+xrDPYRhwzOyG/OfST3v9b4UVOuVIHRRi9G58Gyk/PUxDS9e9rKiEwjLJ3VRzDeOmwb8Mypxo+ixmry7l0UfNboXw85656u2N9Qfg0whNjyZMLUflFpKBUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekUQbNJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekUQbNJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9EC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735122953;
	bh=HuIvN8EI3j35WPiPwYZ9tQIVyOCS53qHYQqN99iZ+y4=;
	h=To:Subject:From:Date:From;
	b=ekUQbNJw9B52sRuL3iHMq4XIZTsvlzqAWY6XyFckxoooF12IQynKsZ24miKJrFFqm
	 NXqxpz75/Glr78WKcUwM4/8VS5FxYVXlxqCQrBfanRjzfz/9PQwrq9bZnx6E2wihwz
	 vxrag3yxmo6kjbRcUxTwnQbRF78FecYak1lV3o7OO2SNnIAB064udncLym1dC8feTI
	 Xgnal64htVoFo24nha01YhTaZFsJYO+EhVvn50ItL+aOtZ2Yu3vUul9pOewO8o68+a
	 CyYV6/fX8u2+zNopj/8CQqLMwU1WpLYLFWtr9ZbQyel4P/aorafUF+gYjqsOScgN28
	 bF+jzCCJIRITg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FC8E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173512295358.25113.15728215205484268168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882ddacbe6f052499d88072aa53b39998cc854d829cec2b09bf63dd25fc86b02
Date: Wed, 25 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735122953
