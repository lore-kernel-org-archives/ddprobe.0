Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6857E63C0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 07:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3085C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 07:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686210785;
	bh=w1LwDKLpjwd3wz9oXEuk36G1DWNP9s+aiQYT/J+OjmY=;
	h=To:Subject:From:Date:From;
	b=FBNyF52PASA5mg8Rq+QQ1EQJsuElkRGnryv/461quspvOUZoZGzBdO0DlO//AVtPi
	 gHyndvFqXYx6nzpYcnoUmneylNN1xcdJCjnuEOhEYcw+2i5cLfqfZMZCTcaZ9AyZy9
	 LywtV5DUuO7yyB1D8qjmiTTYIIjYxWBHlZ0KeXGWsTCnZvX4IWSrD4R6Uxw6cGz1l6
	 H5k3NF7Zd9QJzMwZuZc+QPm/Hua5cr/7Uo/acla1TswxU1A+ot47ItCbRvMvASTo3W
	 nr3hF20l0jEwr09CL/l3ZsXjQZmHAxBotGLIoVuqJBhRaPeYymK5N4p07aTDVzg/qI
	 TCe3vgUZbAvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3020C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 07:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168621078578.15800.17902543189097614402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e29dded962bed2988f417d16193004481ddbb81ca6293434a863fed4c21bc0
Date: Thu, 08 Jun 2023 07:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686210785
