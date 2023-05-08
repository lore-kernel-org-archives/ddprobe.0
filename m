Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5955D11CAB
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 20:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BF35C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 20:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683577806;
	bh=LsI/89cjrvRoxwy8CFePpPc3uwFS/WuT+uwvPJurJDI=;
	h=To:Subject:From:Date:From;
	b=jI0/re4xFBvY1NrRQPQRVeZ0t7UVVRh9XW/xDAGUntXSR614oAvnG+WrJD5aLmZK0
	 epznvpJULueYSyhXWokgXPcsQrS4anE2SJEZ5PiikrgbFYKQSxl2hk4XrNwjKbW/HR
	 0AhTpUNIrMpunM3fwL+Dr3mqOIJUt92Hf9NN7lZ+yQrI4ox1YRP41nw5ww6PAPYtxD
	 ZWNL1ymGZ6J89/nwjDtwVU79ILt5pVyk64Ibuphg+7oehPWlM9pevwzaTYQ+d18GMk
	 tnV1QJIuCLZOH3PMKJgDvINdqAlp+2XBgyAyG7ZqOTKqJFhtCW/bJeLZj2UzaZJGpT
	 Thwj3+MsKEpPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3CBBC7EE22
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 20:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168357780582.15186.8861840620444610377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af574e035e4b0bff314557e1f7ee31a6096dec1398235d64372d01f08d743c64
Date: Mon, 08 May 2023 20:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683577805
