Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A51117AA0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A52C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688163788;
	bh=hzc+FpqIAblqm1Uew9hLsbWT+77f4DMtoaxUHjtux0Y=;
	h=To:Subject:From:Date:From;
	b=Z1xfu+Cj2oH8h+fsxc8m3JoJRksicK0uBxo1R4EkGbxDw0uqmNjh0FWn+XspLTuiO
	 tTJ9MEkbH49tzmyrOAMt4pgOqrjdGgYmF+ksxRJW4L81xT6IUm6etz/TuJDtkAoy4n
	 DSkGNxvqUF2izkwySBzf62KAK4RFFHbHp49db9mzFSSp26q2z9fZ/dT+UsyP6VNQM4
	 vvDlaey2Npuc5nAYikrlow9HZfzBg9Pb4HgfEcFzXaiS3ty8vT/W3ysrw9hSXstPqs
	 iftq/hwBETsaMsRAobEb/Z3ZRqHj7iayLmIK1YGOtHlkegaWJvugrg1bZC49UCLtOg
	 6hxrdS52y4wOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A29EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816378878.9922.4564781836420935095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8271782a9b9f661c26fb57a9dc12a570e535f4d6eee57d0014aba8535924f43
Date: Fri, 30 Jun 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688163788
