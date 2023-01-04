Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11857F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768E9C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672795287;
	bh=OqbOJFMjH2L711AbFPDtg5NQmmfc+MqGdkKuNUXeaV8=;
	h=To:Subject:From:Date:From;
	b=LoDsgQJJ/D0TDxhVj+OLCorcS48ImGZYKlVi/xByZOBU9zvTmLh6EtxbeMJ1pUWIC
	 feG1cX1ZFpxPCeS859OlVEi9qUAByy/CvmuaMQ/jl1gjSCm/mkAp5a0buVr241DFQX
	 dm823ezoDSn6JVVQJHVEPeT+V0NwqFUhq9hXOZXGBF5f0hEST4HSGCgXxyeH8Mh3OF
	 F/L2IlJoqBku/zeNlvyUA2wzTyufKbc3xnEupKURqq2qCXzGCjm82ZEAfKTi1O+rJ4
	 /3aLK9w881QH2GHnglezdlGoEscJYVXti0rklRuGk4I4GGOjSRy/QUZCWqdVYLsK83
	 blwGBldvp7GNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF3EC4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279528738.19079.1728443563713968607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007a80a628fe243ba8e1a46ba059fde8dbc4bbfad5ceed4d08bd4e2ad6c65c75
Date: Wed, 04 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672795287
