Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90E58F63
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7683FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671567087;
	bh=7iy+fXNyAFoMGhXESyNJgvLpiMyMM4gL73U9bFPl9qQ=;
	h=To:Subject:From:Date:From;
	b=ge6FbfpebShXihkjMqte+z2KrG5MQv/xprjQQ01F8Sd4MdaV6f1yCY/ts5QJmfXJI
	 KRzpeO6mo7auaDhVENjDCCxrbWvXO20zlZYXd0HaaToyoDHXozDvsGRHOjuyjzJJhb
	 4SE5TnRUW5GsoUWPaNcIAjECvfMUgqDuq4oezPAv8gtEgHfbM7MNsPjO9onqEiHWKM
	 xzDGszrgzxvggCsx51eyEXgMdkmTQxgBTMIQ2heE7Dgrks9AlOg/6YQ2pHge370wEK
	 UT9JP1V1iYROtQp/CZLs33CwJETdRl0NvxOI5BjpmgNOz4ZEol/7UfJJwXoYL4srn0
	 u260+eby+ZpYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9CFC3DA7B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156708737.10974.15465768433810668620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b088361606950ec08d79dfe3d6b1e9cf7e67e73df9dd28819b4e4e67ef22659
Date: Tue, 20 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671567087
