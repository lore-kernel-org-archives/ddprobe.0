Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70BB28E8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94BFFC433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673260287;
	bh=TFY+cxKs6aFW48J50BGtFTBbiPfFt0jaIrjfCxfwlIM=;
	h=To:Subject:From:Date:From;
	b=F8DAmfc/Ecv88hEzlUAop1WiIDtn653wDUFJb3rm623Gh+hgP/RpDZcvpHB7ABkUO
	 i/YkBIBCVSJyIAwP3WEWYQWHlrOwaBGLyQ504dERlZZVgtsnikUhJl1hNgzKOYbSEf
	 xT3oCst4bsdl7/AaI2l7WD2u5nsnzqSDiazZyZDdiyADgb/Vw0oThc/Az0y9/elBZX
	 h3qEfB5uYak7j6yYDbPNdeYAuSue4BvPQkFIrK31otvsnnNndORQqRUWu0chzxJ+MS
	 V3pWNshrUpTSesjGax4pAhrkd89jU2ZIWqaDi3jcrmARKkn3uf8Zf72t8JxJHjgMgt
	 n3IsHYZt1dH5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5B3C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326028743.21680.4337445752766911714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04ca427544077922311d0a11cc16c34dc48863f692a41b50083c8878143293e
Date: Mon, 09 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673260287
