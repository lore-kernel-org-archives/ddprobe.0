Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C272C2F36
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770BAC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662569453;
	bh=ybSC7poxIHiFka1lyFwP+axBwdsNXNl4Jlh0fKBd85c=;
	h=To:Subject:From:Date:From;
	b=S16qq7IllMHSzvgEFB/IQf4HdjbG4l/HKQGDxoBkFvLpHvFaTU2X6VfusGi0Xz2fn
	 awgzXZFY/JlDR1yQaiGouW+IjKEJj9M3u213b5f4LFPk3WjI0WwvnfCBLmeHgpGkRv
	 0PYqSnnfy17fgJTRDwxkE3XnWhVgEmror+DsmPdb3VlphRqJdpK91yoHudhYz/4Dbz
	 gsi2Mjt696N8eR2JeYQ8CGWkI/NHR2vMgm0U9NeYf+0PMJOg6MS/AmfipEofAcAF+O
	 0riR6MzO5UKkS+U69s5DHhWGCCS1nUkSUg2wJralW4OsaA6mdaHI+mnUXgaCczLrDL
	 D9aZq5Zvn7x8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2E1C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166256945334.28304.5627983811199938608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d718b2656aa0c8eb3aee2630c4cbf69ec0d86b211a91302aa18df742990ca9
Date: Wed, 07 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662569453
