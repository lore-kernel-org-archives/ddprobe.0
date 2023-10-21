Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115B662A
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXEodt9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D79C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697848696;
	bh=PBg79xdhownBTnOwZLA6caEnH2qjNucQB848YjEATF4=;
	h=To:Subject:From:Date:From;
	b=AXEodt9MezjV1RjOmfCQMzKCIz4cNfpeECBKvOOqoQNhBGJJ0PyQ+s2uyOemOfVJw
	 cnJYukV2VqYsgQ7l7m1iqMYZSDePMeMluQmwj0RW+1pOXVweAADAyfyirKHSI5xQF9
	 1FpXsBxZK244Bwfrt7rb7hvGB8tC7wN7bNYgSaoXfmz5TqBL9nVtp4Hjo1Mu6UGpwB
	 PS8pnYMWbra7Ggn3rvXDSwQ3tD3JedGL61wdmANX2KXiTw3eU7S4bPT1zTBKn3dEoA
	 YK+STrn9syQYWIDsFD3fh/uCxL+G6U8OzaKwYV9Bc9YxIeI7TDRgDtCS2EdZBSpnbe
	 MX1ZSd4xTrihg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A41C001DF
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169784869639.25601.13357334139211425033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18d2b088120cd4b2c240417f372a4455f46a82b3dd2d6af1a1c2615e51034e8
Date: Sat, 21 Oct 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697848696
