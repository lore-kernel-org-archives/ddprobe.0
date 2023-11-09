Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C15F1A70F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4LUZ0A2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95D6BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699529896;
	bh=NHD6fFof3W8P54lWMdct+Ym+TSU1DklHaPaRkqVWGgo=;
	h=To:Subject:From:Date:From;
	b=C4LUZ0A2Lr//hp9f8idNeiCIzbVSrm3N3QZEWrniU8Gxjyd3JuOnsB/EL1WM8Qd8L
	 cl0J9YxQ/3j+qgJK5/b/RcWxSJM/1tOeD3B95+m/zfBZ9vomgvRfOxBqwEQWveyhab
	 5sfkswYELWzm5ESJ8eyoepAtCVbZB+thnyax0XfkZDtZeCB2cjPCt/z7iMVWCLs1Vt
	 hWAsNQKHdcJkNridUIeAFhFS0oqIJnWka+T2nwpYwj01tA7HcKcS0E3lovrdG24L66
	 AxLUAcNHIDCboru8tRKghd37t7jRUhhNoNo0iT5y0z6pBFBwVdNAgIEmNuhJbg+BmY
	 t2GT31xsv02nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77FEFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169952989647.13672.15274216620749174965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8947a2b66595973217169f643c06f57febf47d9a7852961bafd3f7ace206cce5
Date: Thu, 09 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699529896
