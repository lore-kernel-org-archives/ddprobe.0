Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A7C1878
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF974C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686377945;
	bh=0ASJ3MbdHfPr39BwkJRS+J8eCgN0WCDBJHkPJvo19kc=;
	h=To:Subject:From:Date:From;
	b=lWqxo56gUCE+zBXjfWJjFEt6A8ISKR/J6J4Lk5ZcRxRlHngoCPhUejTcaY5+9rt7z
	 H7PuXpC5LtwVOirod3znSojhtWT4ekamvREC90NInopf8jOOt4TtLMrcfP4MC9IBc8
	 RGPMPpXPMbTMg/eQmRsRmTOEYRsoKd0BdR7j7Bf4Aw/YLQhNMcTiVfVJlJo9RSuTIv
	 b5m0qKuoy4LCv2e5FH4qrRQbJ2nbvjwF9drxjEDJlSj32XC5QsR5I9zOkUNUzFrolC
	 o19nlxBydOSSWZH5BrWoHI+0UYAPh45II7QoEjZCFffG2YNi/zJTevF2sm60U4q+dO
	 uInPm/HD/3ghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB744C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 06:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637794575.20609.8432090130694001840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4fa417b195c23603e3006e3a699ef442580f87f5568cbef0d20b7eb4de69b9
Date: Sat, 10 Jun 2023 06:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686377945
