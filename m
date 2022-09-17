Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82C146AA
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7373DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663445453;
	bh=60h6JYXgPNToZGPcbpR6Vx2D/v2GssCrqtr9Xvwl+kY=;
	h=To:Subject:From:Date:From;
	b=GuLyF/NZT65Yn4hq60ivriiaTK0iUQqwq0/86H5qI5MItDoRAvsJrauX6EIMVlpOj
	 c+7iwxhSz28sMwF80eMbnTdiYfOoipsc0WxYjfcb3lm+LBhc7hnRj0SuoN9Kkm7oN7
	 RKYK9KvPptxrbf8y/E9DcIy8CjSd3f4aorfvQ3b+QWJCS/aJvtMqSgQW9JvnUrOJSk
	 8rvgZKPRB65T7vlADqoKaggyowXfcxJMCeLGcdUESpN8tjfHoibYFgXDbpyoGAcXuI
	 SmGjqj9BmgXE/Pz3Fv1wOafHMrDxJMf/iLMROo9drXxCMwoq3dupg5acgik1ZRj0d9
	 cuBpNqhslwlIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54ABDECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344545332.24103.4201576483037335618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c057e0bdf6c01c3a71de1881aa44115c29c9a4b6627a30328767bbb284dbc8
Date: Sat, 17 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663445453
