Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433AB1DE8B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766976834; cv=none; b=ZXwjTf+/mZzFVGGhcndp5RgcSek7t52ofVaC4Agd6ST6Zs/ndFu40ZfH9tGokk2Hl6lP4xHxnJeonXGzqIUpZyUcxy9o6AFWDtGaI9rEXw7z2eruhFY8Lsg8KrRCQQM2akEJrQ3+hCfLF9oTtTYrcPwXecnF24DyY9lGlgwm26c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766976834; c=relaxed/simple;
	bh=XlQ4PTx7fSnglPRuNeUe9YC584AGn8ug69MntgWxCgs=;
	h=To:Subject:From:Message-Id:Date; b=EbZxiT0I2Y/BdXfpZIlFCjgz0i5X9qW68SleTf/0fG609j0C4dNydfxdWrz/SN+7qqFWDBWA5m+zuGaR7iUwPyHD6pjfFVIv6TxdoTrT2AhqWpxJdDky4+QzEWkusk5z0C6VvAHZ99hjB6xvw5IERwD6E+hlnnGZycLFeYh9/qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2edGJDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2edGJDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60F3C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766976833;
	bh=XlQ4PTx7fSnglPRuNeUe9YC584AGn8ug69MntgWxCgs=;
	h=To:Subject:From:Date:From;
	b=q2edGJDAhsnDRHOHLj3WFOJk3CwFXhzXjr1yP9VWXMgzHc0KEMeL/lsH+PqAjNjTF
	 0P1nGCxNS2ftwBTO0zBRDcPhlfBvL9nlHUzyGMJDiHCWseai4NjDN+K2nkL6/xNZaW
	 dWZ/H5IeNqGMvihRjBKJOk2tbsMLLlnI8JizHyduxbmM/jpQXJhbiKkGLCgeMY2bVJ
	 lBzU84UaTGu/mjX4XBfHuSOlse5EXPFtkjsxrEkaDL46j4l3T1Dk8bKK7hmAOwJGXF
	 tMyekmsEflLmRVguiV9v0Pb4506g8e3z1nGhS4JsAVmw9srowIxmSSKr7ZO8cJSZVu
	 9M+ym/Irl3mGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1997D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697683361.10665.7648012111792797089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d107c4af3337976bc1f5558d12b504e377e29e78af30a332f5c9997c42c82f5
Date: Mon, 29 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766976833
