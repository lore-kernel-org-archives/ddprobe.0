Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2B2AD25
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7DBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671040887;
	bh=bnlOgRu4xOqzXMLzMLjvbCtOqLazCs53/XWvuGpvKBE=;
	h=To:Subject:From:Date:From;
	b=g8WTfXgJvksm7bxyfAYtVpbbVd1TCy7H45qFnhZXAPNLp4+GxMPQUqTWDPjpAQnOb
	 AyRp68osumuDTHmx9xp93O27bGbwcpOoztWb7sjKMc2JZmMCaEHnOJFWbaM1PlKlbU
	 FO/RTEArPh3l7EXr1Mqo5IvgAIJ3xsQWYjVEUx9faeBZYNf3f04K5wvMBQ84j7EdLR
	 QjXQdAzhrq/fknDWxKCUPU0ePohDiPDvL0Z2MaZIHrtHgEpsQVcK0It26wCtzsEFiK
	 hbG1X4QikjjS5fBZLigOPHUumzSC2HEZ2zOA1QLx1iO9u6sFaqgo4JYu5WC+MZe6VO
	 pd/gxjRDfDz7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F6CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104088740.4602.6549067775247589347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedf0cf55c1b26115ca02e1eb544ec8afe169c67cc96e88cc40c7cf52acdd537
Date: Wed, 14 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671040887
