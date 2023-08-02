Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3743379CF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 13:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF185C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 13:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690984328;
	bh=TiZorwgRvRpyy3uANmt+gnyW6v/WYx/HpBd6JPppmdU=;
	h=To:Subject:From:Date:From;
	b=UljJPyXVIG1SIuEJ0One061l/Gt384Tn0fwqokXoEM3OcJjOpi/Cf036otvjwf5i+
	 ehto5w3n8109Xc6sbJSi5lqTzrQoZRfaAUxuwTPZAjjgV7o5t8XYQYXQD+4eiZiX6U
	 +cULMBCbrJF+BPy0IlXl2BqfNJhrYoENDDjAD6p1tsuPTbD0jO8vm9apxgpEn8fC0Z
	 u4fwd57+JeWKPsCCyg1M6w/+Cegtyw9p1KYa3ePaHF4HREBxQusu4cMWNt0a1FwZ6L
	 NnsN8PWn9iUVterLAKviK4vFNlpEQjzh7UglFqPN1YlaTs9WS23z0af28AWR9bvhad
	 q3HwKXFMiFvOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B08C001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 13:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169098432867.539.700263296036652656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312ed7592fc76ec27ead5ec61e35047415f2c1d741b6d9349bc87ad43dcd9365
Date: Wed, 02 Aug 2023 13:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690984328
