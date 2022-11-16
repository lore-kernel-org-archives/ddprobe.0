Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E457E12290
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F477C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668636654;
	bh=EkSolqKigoVAeoqhdeo5jwThxZODRfCaWs6W7ACkFHc=;
	h=To:Subject:From:Date:From;
	b=oSU0ZHOqBHxcyjdApg16uENZkIps5w2iW+2pJbX5l77vV9SofodxQxZOFiWyJzhcO
	 Tsgi5GqW1ULUlHS9ga+Lz+5bius1LOTgHGHIoTzhdy0jMzH1Aw6R0RVwoujq6xTcue
	 TkAXh5Hh+5QnsucZHfxmJ3mgdyeXM6y1pGehpEZGbvXb0KZi9KKA6xsRWQgwYd6Ua7
	 c4AvIJvJT9vqEBlqYUjEPuGwLFQgiNwf6nOosNQ8weWTqrILLcswO3eJVYW62mK4xK
	 n8IKcVL8Vukr4F+gnErnYLG/yzoq6lFd/ZhCI0VkpQn5N3VvCja1Wsu+WXbR7yMwUs
	 suRbdtkVUtjKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BCCC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863665442.7967.15435594536936666415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ea0abeb0264bba8144da8d6a5b6c532c01ca3fc5275044afc3df020674e067
Date: Wed, 16 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668636654
