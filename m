Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B7DA490
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A76C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668096655;
	bh=seervaExWSS50DIiKKSPNVMQfGzP7oysBT3PgUl1L5k=;
	h=To:Subject:From:Date:From;
	b=JePwZKh5PSyxo2ir+2tjaKAZSYrKvefPY2Sg6P0AcoqiZz0mGAFJOAKPcAL7Wa5tr
	 NP0B4OVtz26J0L2CvtUNkVfiDi7lNvDHvLe0E2YCwYyVOgWwgTfBY08UbMWDEaLrlw
	 OtfTrO1lJXB0cFObyciYCUy1KVxZAtdEokNoFpK9IqCvRaW266J3pcT1PQUMSAopYC
	 vhff+lZOL0vR3BbYS+rTJ+bO9aidvVkdGUrQJU8h+QiaaMl1vyHwAj+cp+Z+cXN9Gp
	 kdjs7s+FfbZAOQ0DORjwKzgLkdavGuuagidRYpFaPUkf92o7hpTMyB0g4mITsBAwdO
	 /N71WkBM+L2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A820C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166809665436.11724.12254414937457380479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36235c5355e15aa3de849a370c25a84d48c012289d2b87d151b9b3abb5e1c25
Date: Thu, 10 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668096654
