Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759C71101
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 02:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA47AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 02:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694226248;
	bh=BatwruSbGjLd1AistldCL/rXW/VUqFwZfmXhqVlPEgU=;
	h=To:Subject:From:Date:From;
	b=AOEFhNg86UwxW+owIoDa/a3+vcYruVBpbmU/PnDcIl32bia4ZCsZ1C0pOFnSUb3X3
	 f1sPF82xhTJYbHqa3soqDtTzBMbo5m5z1JpokwcAdD31rNE3hGLDi83a9TVBWplNSJ
	 R3k5OJjVq4A9FQpT5+KClmE94BK9GfnsQqE5OX4nH7AMuB0rmg+GlIWK+umSQqPtae
	 89yNQTc8BlNJlLjFupqOenlP3lkSF8H57+YCTKDIzG03WaoLgtUGzpXl/r+K4cAJwz
	 BTJc3BuKiUCT8QsdDzzyO8CVIb1lqAlc7prEJkW7wPbCuvzirvwd/kVlaicQHcBh18
	 mhsiT3nHzoqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81A8EEB57D
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 02:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169422624866.2160.1604848529901901146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd437a556d35860002b5cb0ea627cf10aba4b92d6be1d616c7b3b2160ac47f4
Date: Sat, 09 Sep 2023 02:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694226248
