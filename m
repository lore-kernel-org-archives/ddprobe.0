Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D1015B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEF1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669339854;
	bh=mZh9V35VjZcaoUDF6gFuWV/Jn2arkZbwqzqL5MiioO0=;
	h=To:Subject:From:Date:From;
	b=FVpk/2fk8uNe9F3AWb4Tml6Ce62d5QVa8S2uKnYXMdjeO5htLab4nsFnRDeny/8/Z
	 U5S6p6JLltj3ay9Xz9znCUy3uVxSAOx8R+60oQLXQIII4oDo6C2DG2m/EyEwx5GGOk
	 akgcQuLxlSs0RUnMxvlV/C4vsoMiUJXeqdvsB5PTjDJEOkrVcDQQksdSQ2fc7j/J7j
	 7IfDRFYBX4mO6Dw84nuuSn1zWBVqfy3O1c0y2ChA7/LffV6mhj1BrK3yukwc43epqA
	 N15+6kJ/0DQTiCiBQ1f7rWZzYMhctnagG3THyFiEnmS+/MaeJgJeXR/NwKjr2YoO8m
	 /TNINK967PqNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5371FC433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933985433.8269.12933117985298218979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bcf7bc7ba4c2ac710f97ae57840192b86f407f67f49c02fcbe64884db778e8
Date: Fri, 25 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669339854
