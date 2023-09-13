Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF6828EA
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 06:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D43C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694586848;
	bh=Fjb7P7OT160XLv+LIIsVv9BqA3mDeCNjwNbR5AOHkKM=;
	h=To:Subject:From:Date:From;
	b=KVKHLDz7VcyZmOmQR6wgzhqytiWXQY4OOCx6wUeY2So7dRXhir/VuMENIHhDODj7G
	 hM59Q6v8T9oxhYb0dkrjgrAxFVho+4GfXAHGYy1u7oVFsIgCwLc+h67kJ1S47syQES
	 f3DOERk1a9aeafEavbZuq2niGLu8YDh8eKocrROFXFmDMOghqxolmiuvUx86CLfp8C
	 9JywfvtibkYy3Wqz4VRE/Kp4P5qWyRh+o6Q5w8aPQQlkftS4zDejdOBEjJGs2Upq0a
	 ilrBM0B8JwPg435ESHZQ3d6jYSAPFTX6EMXOIuUIwhqH1hJ4tRx5VW/bAFbrobrRCK
	 jVBAZp11JaTgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED9AEEB599
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169458684870.15203.17350690144541520897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b905f32d6ed50d222013c234bee13022ea9b2ba9a2449bc267a368de80931df8
Date: Wed, 13 Sep 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694586848
