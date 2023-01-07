Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B627EA1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1072C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673101887;
	bh=Y4yrTCR6Aj5EfKRes7thxeGsBZS4+aC+evOM8imTQGo=;
	h=To:Subject:From:Date:From;
	b=q6OUbGfgB+0hKaXp2jAfVi6itxesGS2hLGQhx9R+feAq8LLocKustKDnyxknSkDEJ
	 QVVuqsticFXvRcRZrMIgHG9c/iU3dY7PJq3vauhFmB5dLd5O7sk+BL+j4rX0oF7aCB
	 VREWX8qmd7Df/LcEK4i7lUPtphdEMLWHRr+kUhwkN89fVHYdUNqIDDxvL7440uFgfn
	 cQABoL4ZMvgu+hoZZlk5oP2NTN4qNKnX8PO4tgUHjZWEjTTv2VHm+a154GGJcapjRx
	 F3OrXbE54MwkyOYyo2DnAXip+S1eBjtmfClMjlz2ZikEgk1ScuSsCsmOEjGTRQaUOe
	 BMhfFPeWea5xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83CCCC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310188748.19950.11133687806840977529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85eb5a499b5816151ab4c7b57ff5d743841fcbe1a74a4ea7cce7d2f884462a97
Date: Sat, 07 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673101887
