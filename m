Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FA79CA47
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 21:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C676DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 21:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695332708;
	bh=7CmtsqFh1X6D3l1rcskD4Gy06Jz13PBnjC/pI7Wo/RU=;
	h=To:Subject:From:Date:From;
	b=Ug3dTXcvczMNrPDHEkzuzceoRiW3wAhFpwE0BuZwDdCKFo1os8J1PwIiPO7TRAm0m
	 /xmoaWqTspw8QynU1tq4F8kZ0QUfp5VNSuKc/KobNf8Nx/jbNW/jNNcjc+9IJduBhY
	 2r0rzsi6cojDqRnJ6A9jwkmQ8oIhf3LPQbOaP3dUwjyBDH9tmKiqsVFZXJA+AgKwnb
	 OjekqbQLNpI2ooZMSG/alXoNHzwku8eE+akIU6JGYhrAqYmIkjcvoejL2lCLqbv0wx
	 +VleBYhBAof7x6aIVaPJ/ctgm8jK2wjnINucAoKMxQvQzugAAEe3aNgTRswGO0PfzC
	 Wg4oWrabB8PSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBB9E7D0AE
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 21:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169533270868.29683.18419332969944103362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d35e0edc21d1f68879f6b6772b92decea26a2a9f8dc9d02bd003efdc2ea0fe
Date: Thu, 21 Sep 2023 21:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695332708
