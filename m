Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B807C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7372AC43151
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670274054;
	bh=CzRpignUfNg0oPIZ3X/3Eo86/QFGHI/eewSurq+hrW0=;
	h=To:Subject:From:Date:From;
	b=ElRVg4jM3VsVNxtrS0vzLFEL9l0eyWLv6QDy7FqqmtshSosI9n66waFrqBMcAwU21
	 LdgMUIKYRiyW2HCw6jKIcNbtJJDi2vyNCpU29YNz2+3WnPRKq70D0UHrmzqd3nmYw5
	 4iKh1HO6CsL5UdMyu5sXTRjiM47XIGGti1zysgvb45onLiOzZV4k+BVlwPrz4knjQQ
	 qoaXzbK1dEDkHl8L4G8Ff7W/CQYfFb/kEPajv/ewTcfHP8/hOYkmNcf4Xn42KuYi5C
	 Wpqvp0eTVZiD6xYzd9jBtwzOMXI9ryf478JD3pjq/pHj+NneXZlSzS6GG82OR4VmrT
	 v5zn1uT9aQ9TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557B1C4708C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167027405434.31386.14057266926805609409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093235c647aeba87f6ea341ff0d3834fc84d23f0a10d245d7dd0009c238d6ff3
Date: Mon, 05 Dec 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670274054
