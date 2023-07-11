Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774491DDFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 20:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A18C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 20:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689106629;
	bh=f2hizTL12JRkvEp7XJ2KcCZVfgVtzTKvqHBd9t8oic8=;
	h=To:Subject:From:Date:From;
	b=TKsRuyLaAgb4g/sJlAejffd1E21nEQTI9BCHXUZnRy/3RioftYOs4W6Y497NSkKqL
	 b/vICCI1+5KCbSH8ob2/BRi/h6KDxkWVxLLRdsrHCZSAc28AXHZ6CT4u+C+dpmDy0a
	 5PmaSsat7vBap/xV7UC8BrjNsVB//lOQRRqAA3zY5dh+zmOYl0Wu83vFWXZrxXBdMF
	 FTElqSBGUY5JByGdrua++TpcUxm0kvp1tT9c4+DbGTuabF9Z2pjBJKkMequUmYCqvO
	 Zr8RJTMjg02ThChEKAhy4mw0n9c09n4T1Xbre1y+THdHosTfUFwhpRVYVp3PRYWa2V
	 3up51mVUTA2bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3AA3EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 20:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168910662885.20013.17942175327908840890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed97cfdf62245f730a24e4cf427e52b9365f535ee3e06ea91b548fa4b8b8bb1b
Date: Tue, 11 Jul 2023 20:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689106628
