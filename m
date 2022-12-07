Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41EA374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7117CC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670385654;
	bh=5xtiF2Gv2deqXKXp7gGDPeWPjFTrM5MMLwGWXj5/jo8=;
	h=To:Subject:From:Date:From;
	b=ng9e+4tcUhOyljcGyYo0KNcRKACF9Jn3GwuVi+y2rY/rF9L8zHeGuQYVkY4LywyuI
	 q2byhs0leYTAGN0ko/0mNEfZcGdCiGgGyXgnmMJ0Aptz7d1ONNaGKEyeSSXraghGsA
	 zwEKprxI1hOobzdUbG4LaOpM9GYCA6CGZmBWQkpfaDug6bgPbyQcQkM1tWGWUpeHLz
	 Ftv+Ad0dp7fsh6w9OAANUUmmwbLpWNWZ+i5+4SWg7+pMIfAZetDrmcOuuMv5CLOXuJ
	 DUp7qHoYXeiqjct3gUS4QB8JAzo+7+kALt5aCW+jI4MqLqRZfXFjc5pDNSw4P4IK/I
	 AqHXKNWvgZfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552B6C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038565434.28739.18193003236584642347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd16c702db35ea1dc3d10bea782a410f32889cc11d1ddf4d44db1dae2920040
Date: Wed, 07 Dec 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670385654
