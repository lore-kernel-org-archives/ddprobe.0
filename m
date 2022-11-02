Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA7336F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789D8C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667352054;
	bh=3wo2h7vySvxoysHScJGne7pG9NMxtTJ00U79bhpL1X8=;
	h=To:Subject:From:Date:From;
	b=PCl73eNRBByBpYzFJJwDhtaaNsDb8exN4UX/zrW373EpxUquMZLqyPFDgq4id6ZXs
	 AaEoGJwzZHzUbDDtCa1eskB5Ie4I9xpmFT0iJVz+TP5JxENuCTwdmDR51HeGBde+cm
	 Z2nzm5VxKfiQDxzEXyLeRx65+YRKwEy9RDKR+34jqjr7bRhRD3cGGqyQ1Pqi2/Sh1G
	 kPFkQESIU8/8sscFkVx50Lva5LfRJKHgTuW9M/KzGWhYwKW8UsWvNo2sb4BngMWivB
	 VYGhlTuQ5wyP8t8+nlhNr6F/rC0GjJ4vGDItbEZ8kyttC3XkN/XYU5SuD7IAEder/I
	 kr0DAAAVzeRSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F5DC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166735205434.8383.12238065286226410051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b717e0feb30c744095917c07b2ce96c0633acaa48f51fddcc12326a6f58d91
Date: Wed, 02 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667352054
