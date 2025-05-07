Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A951A9B53
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746602994; cv=none; b=WNkT8FxlfW6wNsZaAFoUz5SCQczDK0f8U67GreHf3Y2x4pHwZVVb3sBMxgKVurcX5Sqh9X+Me7W6mIQOdoI6wh4NmSgcHp5zOEtdCJ/ZO1fXAYXx9IJ6zhmfvuRbvkC88NrfmHJjFsTURv3cg4ZKEwCpLJHO2DtbUItQikFYjao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746602994; c=relaxed/simple;
	bh=f1uqG3Ob/bowHiZVujgRvFMS/hnXpoXPhOgSjVUmm+s=;
	h=To:Subject:From:Message-Id:Date; b=W1MY5TPwjhYlefzYcfA1YCruA2njq1d7kzIzrujtHowkBFz/odKvGkpq7FmbfUoxWsI9krbw7yK7SkEfS35H1MOUeMsxAMCOaYYL79V0i6gEjsor63KFm1TyVO3Urr3opjAm6st5sChyEeJL4z7qVq35rsA3zUFXuhtlXGdgXd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM/RBXA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM/RBXA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC6FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746602993;
	bh=f1uqG3Ob/bowHiZVujgRvFMS/hnXpoXPhOgSjVUmm+s=;
	h=To:Subject:From:Date:From;
	b=ZM/RBXA04Kw7sjRs/wROuUQneE2dql5aPb32o70DLRWiuDZR2d2aUpGs2CJktx/LF
	 kDwdTiu9P3SYs1HcAihEPjT1AvFSv8ZPkLKIz55sO9lvFbB2c7sWzMyH0n7uJ2WW/4
	 ZEhDpdHu36b4P7NoDUoBGJD3IJn0rC0BzO9Bovb5M5gqNpWpDLd3zl6G+jvZCzBFmu
	 sEjWu7Pre0fdgvYYL69NJPHLNoAKHb0fVpGNfd+iC0TRyOCAcDYoz02N3L/60UM/kH
	 Mjlebg2WPiqsy5ScuGNdWb4Gz9wuOtB6J+DayArmL/H9bwc9CBzDxDjPw4Zkr3JgqN
	 GFe9Grz9ZWp+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD5FC3ABB6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660299357.1444.16639227016303703744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf624541f3501e120e326af1b68638ca50cf379fbe982e5c4ea2bb322cd9f73
Date: Wed, 07 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746602993
