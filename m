Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD74715AD
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BACC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667856654;
	bh=bNSj9BMM4dlO34zxiELflTZD5lJfcrsoV/jen25RR7M=;
	h=To:Subject:From:Date:From;
	b=Or02vlpwms96qhHcbLlOE0P26PS8jIViwPCzCph20EJkW7bkHtD0OyYiqIsqf2VeI
	 2D4gnPcIXkKlQgdYc7ZH+itX6HqPWlWblxTyDJ8Xb1Nq3GZHI8MuQGlVPrpGme+4jh
	 tGZixciZ0dVfFDCXGhfIPmR9s+OH40GpDxeIkN4B9uf84lvViojr6o7jjWGcxoRbt8
	 /KPlMHmswu2a3xR1coHOdQLD/tt1ZMzdVALJ18ojxf6EJPxRS5CaGw3e9MI3SZIxFI
	 aE+Po2GFNP3yCSfk3CtFx+52R926Wj5na6Pj994fNjn72O9PTGc48rZ7RNzc9wC+4n
	 S2a+L/Fgq+Dhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52302C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785665432.27785.1011480838146932240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657851a095e6ac06afaa6fe54dd7f143caf0ca53e322966b2a7189c8850677a3
Date: Mon, 07 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667856654
