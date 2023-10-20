Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAE61FB0
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9GSzOBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99A3BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697773096;
	bh=nYTcNxZJKXsZ0sg8cgCA8/6lLYx6nSyBf/0NGo4f44s=;
	h=To:Subject:From:Date:From;
	b=t9GSzOBcxtBA/TYohcRk1ahkvTto3Y7JLFU2MbrDQ1PJ4n8FDj1Fk5VDb/7DNxt2X
	 FYFpht3QpsVNWogMo1aWvbHZbFQZ/OYNQA5cnGWxmsc71Kc0lbDBSqk2ke4ijGP3CD
	 fL5cz0hGaqy+8d/O/vcp9DfjucXPt9OIrwWS5MHRfZU0edVuHnyzJTMr2SPwR+Kvho
	 do/NYIxTiRwfB3zMafW5DqsTJkDgNnobzSk7A4xKvzbLzK1FklK+dKAPuPnR7JI+XM
	 jFp9/Uehn0G9HUXK/MzNEYWfFxEoUQUigST3uCf+v7zLbmBj9+kJY6/6qT5kWFXDkw
	 qMX0FBPPbPR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72296CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169777309645.26938.13696693645438919023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b531dd82a86f3f17568871032a4c3576e5a547b1610fd6f07b5e3b178ecf17
Date: Fri, 20 Oct 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697773096
