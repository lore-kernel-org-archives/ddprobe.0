Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BE517E0
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7616DC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670232054;
	bh=XDvPHBeuNSs5pdOTNZRFZD1ceVOzMjaDXVzkUZX2JP0=;
	h=To:Subject:From:Date:From;
	b=gq+h/9Lpk7PBSAyMH/73pbA1lz2o0rfLrwBk1pgjUSZzuz2YThRXIypEGEM82udUN
	 f4pM77Ns94HZysKTyu44M9eGob91+o81mivFOqcdW7Zgi/f3zqzrHMpyW4eAcDhDOR
	 sC4nzYisij6LxEBssdKpnqlFF/pts9IiylybFdFA1AuIqL05sknH8Sw5qwExCE6OSi
	 sgQ7/dcblAz0EVgLPlibNhJcqRrS7ee+dbKiVQHLGRIxsFKRxYdVHJxlEC7N921yOO
	 VEY4Dbt1Z3tiwGOWmR1ErVTjPZS3kmLnY3ngnTPPePc8LIxuH0fI6P9/5eWMGib4Sx
	 Omd7tC11Bd41g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1FEC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023205437.3685.15010265769829868882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fed1608fea76b8bdf012a5ecb5981026f87c78bbb70ce62a7041f3b4d1a7b0
Date: Mon, 05 Dec 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670232054
