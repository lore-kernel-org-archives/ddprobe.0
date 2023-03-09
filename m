Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7582F2E
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FD4C4339B
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678351265;
	bh=1ID4HmB5gGNINXBqpCkRLKi66CW9ysyD1XwYerHnghQ=;
	h=To:Subject:From:Date:From;
	b=Xs8DRdG/9pHA449oClzJHt2LOa+f7RMFzAvuTFxCcUauLBqx/r7HSMZ+II/AUxJFP
	 CS+81HiFemiewAWO94yP3sul7pyInzwo9WlLiBXjVjAgEQ4shyWAX+/Uh+t7DNIptF
	 YT+ShL/c0+N/ZjxtlFRHetYeUDW0mkETQRWb3jyPmCDpqgbI2TkFY03bLnHwkDFU3i
	 ISDkiVvZrrs/T8Cx6ov6QanZUz3DNxm1my9dFwmox60E+/BeU6KmtuJ8J8N/Ff8fpZ
	 uADcih6K/3pxWh4jQMf9TdRYfWiJmDjpUnWr9Vr0aRdCqYNnC6gH4xRfa1J69mdTAO
	 tAUKz6qStgFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90B0C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167835126575.8913.10183049385198591443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922f5d1fb6a90d876d4aeb779f8b5afc6cba7058e8ea9d57da8a679e639f261b
Date: Thu, 09 Mar 2023 08:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678351265
