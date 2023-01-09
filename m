Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26EA1FC1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2F3C433F0
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673236287;
	bh=LkHtarO4eNeS5Vcj6fhNTDTADTKXnSUduj1kB4k51WE=;
	h=To:Subject:From:Date:From;
	b=fWWUGFXffv6qr7/BoSomeKvkz0CuN0eM1AKSyfoZNjtj/nbxldOzIq1Js0GaaBF6V
	 qo/L+18e/W9hrhw0qvIGxJ1DNp2OTjHo2subQ1Ck4PGhDm9gog6mqtHwd6KPsBFMq4
	 6mpZ5/vI/KK/V5BLwTmvcZCaVw6BeOqlMpttuOfF2BDW0Igvmytir69n5sdLC5HHpI
	 f97X1YHHZU47+NPjnu71YYcVzBjG6LauraOypKw0hLcaT3RsG4NThMRIYmR/tj2GT7
	 mQMYA6xJBrdyBHixFh7CF8KF4qtQyRhHY+vzoSQMQLjZn3m25VmT3wn3Y+vyO4pF9n
	 8POJbmhNX0Y5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CDFC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167323628741.17627.12888197628810579043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febfcebf73660bd6c2f892705a6620fc6cca200493f6eb0ca03f541339831e66
Date: Mon, 09 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673236287
