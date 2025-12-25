Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F5F1D7E42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766630633; cv=none; b=s8vKss7e3yaIygb2R0SoOrUoUfLNMCU2t8ocISThszfed8oOHDB/dHDTMr7sx0WaxO7NGkRE95m5KXduBgOA0e4GThV7oL0SPMcUejfGkYiOJQj4WN2CwkkreFBz6xesHG3UZqusRlG36L6ppBXf+tLQI7FISC5eI0ipTCiWhxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766630633; c=relaxed/simple;
	bh=vnxMRpZt/PaoyYM9uiM+9f5gqNDWKSliD9uNpW/CVgo=;
	h=To:Subject:From:Message-Id:Date; b=cjLcdJuLaXWpcMmejJE5fPK75+fWrAFYoE1mHpJ1MWuPmR7FePKOUJ5ZGyhdrPMc/Wnh8OizeWn4tqtP9lh4CTzAQxoJ39+Nmz0p3ww41Ut0YUvJqECA6s3g7DnEfREmHLEkj3ojE0BlISnqOqhpA04JGuXyicmvsakm7zOxLSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzW5c8NT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzW5c8NT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766630633;
	bh=vnxMRpZt/PaoyYM9uiM+9f5gqNDWKSliD9uNpW/CVgo=;
	h=To:Subject:From:Date:From;
	b=TzW5c8NTZjWOViSia631QzaA+IJ+TP4A7WASkPMuQDK9pBes/7Z0AcVNn/U5Z7/oN
	 p2XWq/se+KeOfMf8rtKjcGWxpL38ZHG1qFmN+0dMcqIwN/ksu8AmfLKL+IRKGCkxQ3
	 APHxrgoTW3HWFJDAOr3h7Kaun4yQJapp7s5NZ1wUHGNaTibP5Rd499AxDElZTRQKpz
	 Ube2dAg8gOISJG2jHy3Ym8ANBU/1JcBVzUqfHOPMdXRP5fdu1O/KdMJzVHbqHFxXAm
	 qhk5KsslrQpJ/pEKkSzXbWbs5tGsG1BM8W6xvoAVcuYgt5etaRPE1W3FM5iUWAC/f6
	 5PxMkDznUgwTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533DE784BD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663063357.12590.6075068982195377814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b6d59cdd0361f020d3159bf540fefc0bcc2def9506733146179a69665aa201
Date: Thu, 25 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766630633
