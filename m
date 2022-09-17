Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90607C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB83C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663396253;
	bh=FHTdbLDX8zy19PjeyqaReWlDd4GvYbqlLcC+0+TplFM=;
	h=To:Subject:From:Date:From;
	b=HJc7rhaxlYuOkHZb7D9lhwHYRVbDpUekWxVEAS188AHxjQoYM+9JA3BC3qWcFSvd0
	 pxbtrMGH7dcrLVNNU4usqdDftXmc2xAkuIA7mqpA68GGIjeKFZxaAfKAxe9ct5fwrJ
	 U8S4Zqdjamiik7rZAh008DBoOYQZdRFGdfCedLD6Mv4Gt4+MngXW5YuROCENbqVDrf
	 QsJuQGNABRO7f3nqXBZeYtGK0N3sZV7XsJf3HPoTf5ViZcYMygXMYugYxCsXLZJlZy
	 zOVsh63lEpu3I6Z71w7vy03VWag/iV8TNmQIhLovlhADIztN6uTjyZEmphqhSLLbYz
	 sFUPQglt7pLIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 518ABECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339625332.17215.5675875096574684118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9652245c434ae52aee45fda20c742a4c6f899afb6a485a2faa128aeb91fa273f
Date: Sat, 17 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663396253
