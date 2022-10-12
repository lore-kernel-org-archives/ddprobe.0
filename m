Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64B3321D
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E74C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665601853;
	bh=Zgaqj8wHvZei2d8HtwTi5pwYyLW7a/E6ngHayOo3DTQ=;
	h=To:Subject:From:Date:From;
	b=C/s37C6M7QV5qAsGQ9yeq4MOofzuYkmecGCv2SkHXefS6nIHGkbniutwRAEvkAyrZ
	 oHsDkES0yy3pa8VMFhvg4F4Xk8HzylR7PJg1uZF1EwmeK1YSsfNK0hpFxSYhIywiP6
	 xFZLZqa3ck0eambQnIYfvxkbfo/I/5Z8m3BAe6czx7S0GGKAdLkmPUlW3XqxN1Q0t0
	 4WFBgPnaniALoQtnFAhpZrRRYfGAZzSpOTd9mjHdWAZYnvzzM4vKdWZFhp65Za7gqo
	 09R97NKt0URww2vG23t0dlnS6Ticy0cS9i3raogRqvy0yWu7VVsTVpMzRZMcanV3bJ
	 rgqUKMf3xkHNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549C7C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560185333.1804.16898704132651068906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220b9319d4fc3826524061a36ed45d867d579144ce8ada91595124b54e4ff0be
Date: Wed, 12 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665601853
