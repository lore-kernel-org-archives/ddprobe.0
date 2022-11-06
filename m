Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81C223A9
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7000FC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667724054;
	bh=it94lj4K6ZrXduRwjZIuJPLa7uZmPPDotDqvsObsemo=;
	h=To:Subject:From:Date:From;
	b=E1Sr8ShmGnqGhItvaik1/1oNj+PRvctQoTx+fqn7UU69HVAmcuK4OcYNjoDFzMl6c
	 gK0ePZ25QhCHkw7GGWTqGg9Eai4tlxwpv3qDdZdplfrLMmEYBo0ModPuozWcBAl3MP
	 kX8erplUheyZmxjA5jEOaHxFvBaYCxyJiLpaOK2b3WPbb9VxQBE3QNqpxVK/YEn5l1
	 ZMUKgpgQkOCpsik/hQCJIE7j6n5EgQAQHSM4Y0TIq16gZx5+JI4fOQR+hZEuzdj3GW
	 MN6dtl7hP6ZYienaP1HRqisxtV2PkgrFIXl8gykFOjd9QNjRsg/3eZQ5oRiOn4r3jt
	 qM5LpDF3XZjEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534D3C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166772405433.9045.2596683462088960023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506b3c16c31c104e465d575d2c735b71fcedc5091108852b52727dfb8e91ddb8
Date: Sun, 06 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667724054
