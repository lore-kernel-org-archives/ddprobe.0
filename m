Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D3C11725
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 17:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4oYkGRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C615CC433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 17:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696785428;
	bh=6VqAAzNf7oeOEPX0HSOlhEPP+skwckaiSzc5hIP5P3k=;
	h=To:Subject:From:Date:From;
	b=d4oYkGRCzsrKCaD2y3J+N338SgkJ4YprGaGugKQ2eRA5fJQ5u7DrbNOMLUmxcdDrd
	 BXCUehHyc1Ds8F1oWeW6jmW+Y+5WXfDdOjwy6RwtgZMgi10LPHEuYP37dN9nEvvB0x
	 hAHzzXU9FjApQ44hQW17s0EmXvZKRCDb8idz6SRDOyULzIGtCdF12zwiKg2ZlZNSOc
	 q6yFOj6/xV7GEzD2uvXUhBRcQ94LcvWLzPWZ+sH1JOjKDjUjF8+BApMeakKYYAKNCc
	 XCTYfFJ2Ketq3ipX2785l+oAaZmINdfru5hswdRkGz90I1xMWZzoazZm6JibVomz10
	 2lPC3xWB9msiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A0CE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 17:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169678542866.9108.14423665087592996120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8126d12466d1acd3b0218c1be8cb5b601d84590ea6d0cc0d4b080c8ef1e3ce63
Date: Sun, 08 Oct 2023 17:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696785428
