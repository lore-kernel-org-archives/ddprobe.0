Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A48C185D
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8pkWkRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FC9BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704011296;
	bh=UmfrdI5CJLiXqQT/ryC1mxDe03xhgZGV/m/EUuZNtYU=;
	h=To:Subject:From:Date:From;
	b=d8pkWkRxUO4yvu4ZMRMnSReKBpEf+MAZ1E9VWfyjtg7CnUoKy6zTxq5p3ismU5NCN
	 A4oEdvoHgmNhXSYKlSUr5CxS445Zc3l1BekWFlOljeFQL2F5ytB0EZ6trX7K/kL3yg
	 EYCWU1d02mwl6zDnW3V8UnS0M4uAh777nzzVNV/OJuZ85+hgqcRqs/ZpSlXr/i7bBh
	 ALnsB7WferEJvIh67IR2gAHTXxovPAQblF+vZl1f9Pcw5EE2SjBDSCrxlxKxllhbfJ
	 odFqZz0en20e5dCfrKYR7imdhn1K+xw+XcrkPbcdGMsL0iMiagL+6LGYj83G4uCQ5+
	 ZwfF6HlOTPgfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C750C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170401129642.28559.5552043463273332187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7da37ad602e47b2afa6d04307b8c272a13fb550a858da0d9b9d9c1eb0cb4d4
Date: Sun, 31 Dec 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704011296
