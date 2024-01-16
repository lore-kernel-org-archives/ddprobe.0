Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B09C6FA7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rD3ehC2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8824DC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705370296;
	bh=SrBUcMLPiwHVXM60B3HMvoC/T59WUwKQZt9D9oiuwhg=;
	h=To:Subject:From:Date:From;
	b=rD3ehC2Hms9ko4K/9P+qhueG3oI71N5d3lUdt8PL7mPVwd+UbVidOk01s8cMnpYnr
	 gUqy6ab5P9ExcewUtRKOMHQHcSmgK42JVZHWjlf9yJxpTVXaEfJQtLZCM9PXuJtDmS
	 zYv2Y4NEId3zj5ow1FoCZ6CG016CVQn3U7DxqJLzqqEzstLurB64FieFh5JOR+XyEt
	 PDygXhbuLZP8AvkuSo7yeY5bNrDd2d7horO86CeH67WB0acpljgVHxDi8b+k+FVgqb
	 5d0p/JesmDTWG0Xaex8oG9jKaESyZOKpihbkc6xcDPqKk6ePnD0EYxcwaUj8C1EPFJ
	 uhcDvPXkljDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F2EC3DA79
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170537029641.2519.16494931864749959532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10fc6d6ae4afa36ea23f8891dbce6779c674948f7069a3e163aa907309ff5c2f
Date: Tue, 16 Jan 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705370296
