Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1685F63A0
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qjqs0fRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889CBC433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704126496;
	bh=4FZ1gzQKnA69fRUD7wI6PyWG9QGC/8mv+m3bXykPloA=;
	h=To:Subject:From:Date:From;
	b=Qjqs0fRci41Ia/dmnq71Zu4Zlv1vZWAunWpeQpmidfA4yTcKNqu5/Za1rxUa6mwQ9
	 GJ+lEfImzRe7SJal3BoQQI/pOAZW1tgUnBfSxbgIMBvn7ItiLPqKf5B5Bhg4SBkKOg
	 A3o8YE3KrfGn8h885KtEIWTbwKTcLc0K5WEEUyiClX+YGKAkrOsCxgAtZFmWbLMR5a
	 xnqVHjD8v8tK+dnSBbhSURNejn2bHWA0iuTQ6CC7+XhMCpmB99CC1LWUNHISHZ6Pqs
	 5rjoXhArfFQcDwb9ZWy38tZEYrnYXA6nT2oyy2jie6sGRhZfA1agGjiJT5Nja2zlcl
	 SiIucvYqiQBkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666D0C4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170412649639.3236.2675472844350110331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbff4688594d9fe3a5d1cb08f112352b973cb2ae189f1b4212cf5493a487f3b
Date: Mon, 01 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704126496
