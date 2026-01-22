Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DC443E4A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769082834; cv=none; b=h+wdGFLSjvAbW3qnFhsPw1Yix6m5/Dw8OOhHc/sfFtIx3dXe48Mes5do3V72UC2ODv3EiXx9W8Wl73tnRkcebmW3cr8FmTWnKZp1K1p2v3TAI0eq8w6e2rzMAQ1lv5cnVWKTFtmj6vK/jbCt+mXOQn5y42nhaF81oPfhkf/YBqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769082834; c=relaxed/simple;
	bh=JsDS1dS4EQe7AoektYQgw0/hilebP7/dzvg+1aZ5fIQ=;
	h=To:Subject:From:Message-Id:Date; b=Sms/hA4+fxSC3KPwMrlx0DVPzisvGPmpnKM9IdjUjEbDFUaBS/J8sWlCHbjWbyweEz53SQYWT5AF5H3hZWU8fYYUymK4UeWYpcFY/2sNlWem5NU6XZLl4rAn2V6yxNHZo2uFCZzA/qK5MjB/J+XlXu4xPjv1iK3BZA8G2jQ98ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlsNSxxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlsNSxxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6FFC116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769082833;
	bh=JsDS1dS4EQe7AoektYQgw0/hilebP7/dzvg+1aZ5fIQ=;
	h=To:Subject:From:Date:From;
	b=JlsNSxxGkObWyJSk9FXqGou7LiClV4QdQYlWYYm7CGP4IAXVhVb61QR/epDwZX2dr
	 6Krj26AjwfwCvmvMWAEwFHgDuNOdeVbfLN44SMXZWnnpuRODiWJCJ4sAmRpA/Yw9hx
	 xT9Ll+2yqRvrNUl6kE+sYPzEaU2werct8A4wp0fkDkc2UcGXxKMsAZ1bfR3MKqY/OQ
	 u+Mg8YIi5lwS1JWyUp9GUP1rr2bsgrlVabR5dBb1gLqOLg/Z8mKziOsyNz60c+JzV6
	 u80ST1S4eruY3PNQ534tJJh7Ei+fxc4lPqkWWWDUlPw8EkvjIYYlUvPEnIx1xoxnYG
	 g0wojcno7Xhrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2C2C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908283363.20854.5968363150215640281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ecf4dd1db17670bb43510fd0325412b4545a21a417a7061a2c7a92743dc3d4
Date: Thu, 22 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769082833
