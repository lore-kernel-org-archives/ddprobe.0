Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7097E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72751C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668214854;
	bh=HhNGBeAG6zRj/fDXnkPXACIrfHUkkBoRqCbq2OLo+YM=;
	h=To:Subject:From:Date:From;
	b=Dcf0LuZvONCcUeWxNTnO4IHs+AOdYgJ2/VBaee5ev/Og9Qaznfj/ptraDoAs1HiyR
	 Tr0ghV7u0lrA4HXdQ9z73BHnForR+DFT+W36o8TRvlePzxCXUA/wzh3/AeBz5418le
	 eh8bsmvAjK9JKOfc4RORkeRYWL1ROjK+Z0A+u7UU6n3OdQ/0KtFo7IYoDWFwBffRRw
	 eLyQu7Tn7ND1UwlL+BSu6EUHImL15ArsONNQ55uWWlF0iZCe6LoflXn8xvEKN0pXoJ
	 GHSGOaDvBnRZEby5RgHH90F8pJqm/Si2QQcBMsfInGV5aGHBG3k6u9tEnz7QjC4si0
	 UUSWW0u+PkD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5584DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821485434.4421.6877457223115405613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db07a7d83ef872853a4f25959d27b9dfb894bc05bf2ddc5f68c4a9a5b5d95c6
Date: Sat, 12 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668214854
