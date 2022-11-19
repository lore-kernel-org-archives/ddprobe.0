Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CC4137A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77301C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668849654;
	bh=8FZQp4u0Ckhoz3H/I7Fcu4yY5QI6XBZTvzPXpQiN3qM=;
	h=To:Subject:From:Date:From;
	b=VFk/8mEjsTamkYdj9z/yM/u+XlFFknWOUoOI22/N+5MdU/OwQ/qzoWoavCDpLvjp8
	 +fAI9xi4OG44UJQyAwdKT2IfUdbv01I87hM176hYxRK8wyvpSuevZOZh4wZP55yLvR
	 M/wWRDbQRIfiDmRqKb2icayKtRm1/s1lxxmOO9YoQfKULWj6mJwe8TPcH/u41n7I27
	 uB3XHUMVKNO+/U9tgRKJcf0esFtNEVyhKTlqt63FLWMqh809lduzBxuhvQF1Evsv0F
	 M8oVHxXVryHJY65AA+wduZ7DwNOvI92jJNcekbKp2+CLPibBj4OVussoiOdC+4EbhW
	 +asIdO0JmqWTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54587C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884965433.32720.6035241903161484099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c9731df9ca596afe325d79349bf9873eae317930473a8da45c39518705a0eb
Date: Sat, 19 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668849654
