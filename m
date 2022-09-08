Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63FE7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8CAC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662615653;
	bh=qH+mumDqmd7FRycJnF1faSSoZlE6NKErj33AghNKcvY=;
	h=To:Subject:From:Date:From;
	b=D6mUWZmiZBjUZYVQb3gqFnv6jiNUYN2OyGBqyoXjlxDOiH6XgBnYIryYrtBsV1x7L
	 0coJiIkT7kB2itQFaoR9AWD567l+AnJ11UNkXc0q+5ZaeYbiYHdZeQ1QfEEbKLYy2R
	 NBFrD21a5rn4d+v1W6x6wIuaUAYEPbtGUgmMWYVwAxsg2rYByaIOachzZcCJXKs/Hx
	 sBnYb7O6PVKknZTsRiaayssCPHc/Me9lql8ewcPsbATPycJYW5OJv/Fu0zRx3kOo1l
	 xA6m++wcr3VhOb4Yh9uMzMwZDrft2nw1svG+rMVbE32ORrPpNDiKydJh9VEd6Akb4k
	 aca7BdH6RLhbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5247FECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166261565332.15996.17309226724151815749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61f14180e8a312060fd3d4d1ae5bc843ff9dbcf4fcd5709c86189dd0802806b
Date: Thu, 08 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662615653
