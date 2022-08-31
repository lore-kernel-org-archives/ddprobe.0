Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB4D81A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76561C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661964053;
	bh=h6QAKdmWSodiQYiS9Bwzf6UmgWMOxbvZG7QIrL8W2/Q=;
	h=To:Subject:From:Date:From;
	b=aQ5SUt5mKdSF7jsSdbBUGyl8pgFh4l6q3JuWfUQUD8P7oJaaKCUb6DJX9tYc8Ttgz
	 RYLpb2IoWZXmFQPXoNAkFiwXJ+SM500NJySuGEkUB0nDsqfBC9IyO9m5OJ45zqGc4G
	 AoAahhai+TjLznJ49QzMux9qo43Cp1JT1eJyaU1WVigt/Ze57YvXMYo9QzqX9mUp2v
	 CKipQuJzfBbpZGNyi3BOwLuuRGbhqMPJ9U9dPi7zKLP7uuZfMc3pqrqSqHsALYbgRT
	 AV+1+Vk/G5heHJFbuGD3lQ/b5hY2dcW2NHLzMiRFiXo2B8/klOKqPOOsGXRYV/jDIx
	 GL/boNo6rif1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59856ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196405335.26802.10886554981204006103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a04e45ff0bfee4a74ab503d44c99cbbcc39ff649ca1b043425fab3ae53839f6
Date: Wed, 31 Aug 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661964053
