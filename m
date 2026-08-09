Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B8F2192FA
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786301434; cv=none; b=CTo9idGyheFmPGgAWwux7S0Htge7BkB5yTJkA0tjsAN8cvilAc10IyBDuQllETOjChuWOaVIR0GlWbcBaU6XwqzqQHjf5bM1jqMob3Bg2TSSi2dPFpT8sU8stgo1uFbEsdLYbhrT1ylV3T5NFMoQikKQaM3jBMpgGUAIAAiUueg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786301434; c=relaxed/simple;
	bh=bEA8Z1wTFOyKRiAgoVJ5eKAYFQHRFpqHs7asVuR+4+Q=;
	h=To:Subject:From:Message-Id:Date; b=YcbNdhCC9yOWoZKzrbNZHXWMw8d4M8vxP6S8aDS+Kljg/1l8fuVtvo0uEm8csST59QH3GEeuInjjNiZIqZXRkTrr49GaRVgnZJS0lGeXnCWdYiZ3qSjKiYat6KImunhzd1IzmYYm1W+JeeTocWTIq2s0X8yo4g+DceagsFTCN+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYZzde8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYZzde8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D834CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786301433;
	bh=bEA8Z1wTFOyKRiAgoVJ5eKAYFQHRFpqHs7asVuR+4+Q=;
	h=To:Subject:From:Date:From;
	b=KYZzde8+DZZ0Pl2xHLwvX1VbszN82t9DJ9/tJXBknLvPXpfQOBQ/6r7QKuBwuwZ50
	 l/mlVNXD9NuTQHDb3uXCO9CAETXESw0Vn2D2ibtdYBaq8OjxXneVSpUSFfzFNWDi4/
	 fWvS8FX5iQVUk7QWr77CTLSKExe2Y43laX1neMLl0iAGe3BjAjqURJSdiqiMe2RJWm
	 /uS4NJATzuNZiNxq5j51/Rr46al65PZNoSJ25K5jDPT1FdVt3dU5ed0Itw1NsJTkZS
	 RPn3SKe7QvgcCsoDGMFVJVFUhfVjI9SryNOVBJnZRT8t+fzs24/vqk/uW1ZFzvELnR
	 eFe+1xnWRFofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9474C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630143373.21203.17200425058530456498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5819c4740412aaa19b5318a89e6f255cab80a30c15055bbd83ffe537bbbb4d97
Date: Sun, 09 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786301433
