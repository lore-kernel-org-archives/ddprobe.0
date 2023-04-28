Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A65320C
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 044C2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682717706;
	bh=TNOFOKpN6EdXbUEGcU7uk1kqub03aQADjKSw3apGFTM=;
	h=To:Subject:From:Date:From;
	b=RyRAd9UaxHCrmU4ZSbdcKpva+MaPkXiUc+IIILHWt42a1E35oR7FZSTL1VcDfPOcW
	 XYW85A1g8D5qH3OKo9AOnkvP/qtzJSJE6ZdNvdB9rOu0ss2YQ9lnvHtMOyK6sUdw7M
	 bri7LldI8EfN7C7YBQM08HMyC4mxGG+zmfFQej3jwd4NEPO/ABBJnxdkKr0761H7Yu
	 7m59vDvX3Q56y0ssrZ6QayOhZBByICTRyEWT3vg2yissOes1x2tFIYme60xKyPRBP5
	 OBRz85xAvRUjUXAhM1D1dLBvMLyXvN9g3iwmIICtd5DSRfj9KhODKoREeVn5yvgIX4
	 t55YsiW26bDWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D95C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168271770576.1027.5680186046819539784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48965ad3bdbc7f497c7c722c96b9c977af5f5304617a2574d516f297ec6ceb4a
Date: Fri, 28 Apr 2023 21:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682717705
