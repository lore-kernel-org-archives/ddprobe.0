Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46117B425
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768724634; cv=none; b=GlBQZHw8wHUEwH7TitVOgQ1JF/YhTzN6Rub5Ncof/C041ey6X/zlV4tiIeNNdcWdi4WbC+bWwxAFf2bzTQuxgC89LRHAbrOugdMZuxejSGU4gQA9WtITbn1Z6nBpwr++0chT6hmUkEFsI/FNU0suj/Hkwl+dtx6l3OtpntSia6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768724634; c=relaxed/simple;
	bh=xDtQy3vRxzP4p8dgKGAg488/NI0omhJaLgYXf3ZIt/0=;
	h=To:Subject:From:Message-Id:Date; b=LiF+EFwcV6aSB5qY7U5OrOtTLaRAGwifD/DZOEk420Qrg33MUAAaSksNvDZFfWgmUXZyJwrgJJfirKxJzd97nr5ZpoTinLLswLN8WDmeIKxLncOj3oskJnvf2QHQgdcMdfLNyXIGbOyUhSIEa05Zis/ReT3iElUuDt6ke/1B+mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGeAFEGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGeAFEGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D60C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768724633;
	bh=xDtQy3vRxzP4p8dgKGAg488/NI0omhJaLgYXf3ZIt/0=;
	h=To:Subject:From:Date:From;
	b=qGeAFEGaN+uXCD64g/VtzkLHroBSUSR9vWkXqjlJXZgzvBOVtoNveyUOWhBPpnJKr
	 ln5rp8zY/K4qB0OjOA28/mWOGroemeMVEu7xVvZ+ePLFUNwpSGxE3sc6Yy3vPZ7Fjz
	 fv9zKhYHeSl4EYYtqbGWKIe1XK7YZDnsBPhPXKqMGDR2mWdOceWz/FOEblpuz36qkm
	 gCZpxEuIJqEPOASpN4zyMCswoTqFPw95o1vvO2FWwIu3PDZgA3QMA5GdaLrCWL6Qhn
	 eRymTYZFEsDBcnTF27TtTrbPi/NRBvaI1nO0GgbJb/hy9cgfWW2gI4MhtSdN2+GkU/
	 FSPzdi42JAgaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E8DD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872463363.21036.12468291977272389266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2adaf8c57f9b4dd7aa9f13df627416df921012e5375be8799073864c15466d6e
Date: Sun, 18 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768724633
