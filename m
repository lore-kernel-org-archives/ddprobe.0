Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC54A2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CC0C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668300054;
	bh=eq4uv3I01bGe9mugOakaSYGoFHwOv5hAdTWW+cJJcIY=;
	h=To:Subject:From:Date:From;
	b=QBhJTQd6qRTQ5LeMuXvE9l1HkU+xPEZshJ2iRXhO+ThKMYSua5CxZga26vqyngjUR
	 aSp8bYCQejpJa/ykUiqmaxNuILoNl1AzkA5JIOd4NxUw56r8EYWQni8Mue9An98FPy
	 ocehYf2Cez6EppOKV1E834pLOqXBZNNtVUkblY77aGDOcs5lEKIZfw6TLUSzD1CQe2
	 9qKeehLS176fXeievrm/KuIC7paawh+td3hphmjSOgrGTCSQ6ste5+CnwNPBGJywMy
	 aaMAoqPTHdQ3pRORcVZHIzha7VcACJsmI6Q/kMe63B2F8eFmjMiJ/jWoOhpZ4zCZBX
	 cbHFMC5eWuj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F80C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830005434.3052.16363659959162358207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958ced485eca0bafe1d9bda9c4e4ad8c9105ae870687b8c58398d41dc309dc6a
Date: Sun, 13 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668300054
