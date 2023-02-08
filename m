Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ACA79D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E265BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675892465;
	bh=mEZRP7hbAtyD/Wwl6mv2en6xjwZiqY98PabLMDhSwPs=;
	h=To:Subject:From:Date:From;
	b=cxDidogE3HILuuoUxv/nyK7oA0Voyc1BAu9mjBo2IuokPi7kqFfh8ICsQZvZw8JqI
	 z3OknQwjC45qnhbbHkrobb7/9nZa4+LBShFQgeDnsn74jEhop+8gX96Vlx7CbFZoZ1
	 7IAMpKhvfuOdbI2rA/1mOfcLN8B8coeIuiTHzUofnVbv1TWRytIf9Ce33KghOpmXct
	 x1NC2hV8Xxfc8bBk3h9JXBLbuuK4SfACXCZx2xmrI5STf6Ezp4JAFSXIiKls7QHELF
	 KucxE3KEo4voj7/zNKujW0Eqo3jMS+lqiqWWoIUBbxIMdrc0TcBIaHU1szPa2cFuX9
	 NiF4DWu0cDSYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85BDC636D3
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167589246581.23612.14443818742089454737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c52602c9c681e997fb39c8bd391d63a043765de00ec31edba92aaffd098c33
Date: Wed, 08 Feb 2023 21:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675892465
