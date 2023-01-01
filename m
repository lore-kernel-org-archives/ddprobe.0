Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CED1FD3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80220C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672557687;
	bh=G4X0m0d0Av5QjK2NnJ5c6tb8pZu3pfOo8OXNsd5d5H8=;
	h=To:Subject:From:Date:From;
	b=nLReds5K7r+uiexQYRtAXp3U8pCn5FriCdGZGLoN1D2BJT6kNMyZU4aq/Ol+hdxMH
	 ZtswBtl1eBnbLHAOM+C1ojDCjBaWACOMKlcSimru8rtNQwiohzilcKhDUDYD1kBBrx
	 Cz/i2MUENJ/zE+hsfEyMqMw5r4aernwGd5Uw7WZZwqMCp/03yKaOeOSs1Yq+Iaci8f
	 XJEjFELnSNTkvc1pX9XdBhlv/Zdx9PCjvjPyUfSTSyYyJAbl2AKIzME/bnvBuNtfJ4
	 7RRCk2DNspuzIULYpYEq+IY8oS+IvypIOWLgRamfB7cwxhG8i9tYudGxaAXskjSwrF
	 lhZ9xqsjJnyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6477EC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255768738.23341.5959028817537078411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf216f1e24ea405e11e3ed3f1357df956f1615df391b99fcb02dc9ed0affb43
Date: Sun, 01 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672557687
