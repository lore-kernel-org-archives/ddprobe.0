Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D121C20
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 06:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75C6C433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693464248;
	bh=Em7AF0lduIyOiV4gJpTBhidWy+nqzcgeNnj+0LkIB9U=;
	h=To:Subject:From:Date:From;
	b=Kv5N4mQNrtimyoEDYOoiGq62KgkgwyrC8SvC0llhthRXlM4VCI+plYOncJOLyhdKO
	 wFTRmJFlHpW+SfWkImwJeONi7tDdTmEnxH9XMm92RT5ZW6xrjMeyiftbzVrzNcXYAz
	 x8DzglC2G2J10/ysmHaKr9UMQxXhvlKnxstrwKbwVmGxaGHsWmJhpkthQRnqu51wkI
	 34cNjmauHrbV78IR+fXlvzGRGbs+xSgfUOn1nZGk6JdIJvD3ZSvb+yD0yLbHpYAli+
	 rZDAYzrz+r/ZpR7eumxhAYE7mjLF43L4t5RHwHY4htaNTw0sYPt1V9vPsnCxGO4mbG
	 NKQPfvreJWCjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD9C83F2B
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169346424869.25196.7028561580852606882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19fb8979354ad55dd487ceca6a6f6df032fd013d3c729bbe6f7d17b94829198
Date: Thu, 31 Aug 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693464248
