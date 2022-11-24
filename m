Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E5D1FC1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EC0C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669270854;
	bh=RStsuMd8lW/kkIZUK3a5X+Pk6OaBpzs/ImhAg5A7lYA=;
	h=To:Subject:From:Date:From;
	b=eJAt7aXJMB6qd5/wCnRp8+x07N26Q3O+Nd+aE19c3vPunmYdDUUamk15BTOW53A4i
	 fk0NR+4g7DdbdDJhZm9hfE9c5NnPpXidXK5KZS6pFqX5VYy85n3UOfS4W9o7TF18IC
	 YKCozRde9YrsnJkbOT0Ib7CdVb3vY4bMqGO5SyFlOYh1hJKTxvapfnbtocTZoXUgTQ
	 AD6ZpahPgLMjz0X4b4/1MLHXkCyvOthsWCbdjE1GPWFpb68SCIcY+V40k1paRH/1Nf
	 QvHnW6/dScklGUdztwBh/n05dBdJ95RGS+5iryl0CsBtnT1RF0DOu+J5yjFXtc9MCS
	 REZh762aJka6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5725CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927085434.1825.17865493506521063132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1eed10216b5e4cd5a87f20fc90a8e9ab61a0d1f58100461c861d9f9c32b61f6
Date: Thu, 24 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669270854
