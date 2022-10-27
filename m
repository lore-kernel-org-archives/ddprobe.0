Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EBE1860
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A65C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666856454;
	bh=jeZVKXSOS/VUKMHztR+yxbvHPxiVXCmusqqht+ziJlY=;
	h=To:Subject:From:Date:From;
	b=RidGHz7zpJYAz4XQD+r8EVR/lS0u/6lxVDcp5AJAbMnorxxVx0FmhmOYm+2u9rZ+T
	 G0VpSTNA8J6TodBhn11W0KBKnPA6teCj94saOOxfGZ3hd8YJMalYJI22Kmrz/D9c1v
	 gJjykB56pK8P3QLbcAeAQ9lmTIV0UzNTQyqFTZrFC9SFLPfxCALkf7xjxdkl56fdzo
	 06eHvB898vGu1PDkcdkWF2St0zm063256WMqSYNRv04/LvtBU7Mx7swdMc8C0eLEMI
	 jm3PaaRw6dxaPuCZLrQIpW/PYPqhFCECOHIbRG6aM1UuSMWGO4VrPzSvnFVJojbuas
	 pk+AuK1jPExjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531BC67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166685645460.19599.10533475451252705960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96cdc28dc10c47fb75d87e21ab11e45d180614b9ac79e0cca87bb85b09a96dc
Date: Thu, 27 Oct 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666856454
