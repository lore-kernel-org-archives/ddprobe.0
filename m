Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9655657
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F882C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671259287;
	bh=Qvt8YB3OwGv4qgan1MJ1vrAP/+nSKbBG3cr8o3Zjfoo=;
	h=To:Subject:From:Date:From;
	b=Fi1+ECx4FfsXSzv0fQqIG4Opv9DhfGMAkw2sGZl+FwIWo0aYMBPiZ/fZkoyKq0/Ty
	 DbG+lNiBMZPKuF7dAeOA7F/T58locfW4fTYTj7BkTRpx+tOQ/YnMhiR41YPRC3tdy9
	 anUkLUHglPgoicw0EhNQVoHduDdDL88e8eOgFDz6dR/Nm6yClcuMawxvU5FkzpN8Wl
	 g0z/wBSUEejOwyRGrZX7Ockl0cgbmkXcq+zKRhBzgx8KqMbYPmnw2w1VGmBbQm532x
	 f28bUvjO4CEZe5ZG+oq3HbwfWF2UaF75R7dyC/ckJy5zxyjzOD+ipcyeGeMRHntJTq
	 n+2lbvvSNTXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F868C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167125928744.13276.9192598492921080280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e2cbfc78d869e0d60d109d85c3e882210cbba695ca0fde73e17224ee517e1b
Date: Sat, 17 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671259287
