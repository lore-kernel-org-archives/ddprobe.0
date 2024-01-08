Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DE5BE49
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi0SYiJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FDFC433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704701296;
	bh=li+AQrvcg0nXqkcRAlR3urizFMWk1/oAb4MKM715irg=;
	h=To:Subject:From:Date:From;
	b=Xi0SYiJu+0Rl3XubVrW+CNBnYsDnq0n5B5ahSNUhN7uBH7ebeMB6JXdvahj8tmob6
	 UUh5JtwkUe3LdkvMwOgJSA7o9iuExcd0NquwfCGiFa2AXqDU+HIa96S0MF3TnW08wN
	 WVSn3DJUha7Eyvi2j2/jJExwWCWhSk+4V2rqxL3Zdt2YX5GhxFQnIeOKnlG6vyvYWI
	 qSlO2NyLtqUaY/ib6Hy77D9n2LwNVcUCQNK0mkbj069MFJy6cW0zSSaVgrsxB1yEGy
	 MSoFgmG3bFEbv1FpSp0+wLnmEUO417LQx/WJHfjFRRVn3+/21NutU6e4GpQSnQbmtU
	 xhNLzw3KohOSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641AAC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170470129638.16499.12494788493849876712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3919871ebfcfcf201c5d86404d9ecaffef8fae203a29d852233659bab247336b
Date: Mon, 08 Jan 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704701296
