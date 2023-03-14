Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE0217C6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC214C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678762025;
	bh=97sdyuJ7yaz8vTfW67Zg1O3X9roZwc/WNv2YQyCiEk8=;
	h=To:Subject:From:Date:From;
	b=rinfEIhVWk2TYonjXd2rRFhpWdkqRkmpuBJRcSU4YEJ+r2k2+BJvD+bFOysbd9TSp
	 20bbG7LxduPDNHf9xz6qogxYYLn88kePTMKQfe5auJkgsFkgrnQ9EpLUSyks8oPIOs
	 w46hu/sT99ltarqEyUF2jB4qSQgLuuQ7ByVQaAZaXgiG98BuFp2LDWw6jFACSaQRRl
	 AhYY4uibKiz2OB1lq9R5IoQwy0kFNQZEebhJ6R/LXswoUX52i1lY5zZkIxa8OzUBKp
	 OushlTEe7n5Qr3k+tM8F4CPcwdUYaV/m52SBmx10kGh2P3OEShX1HiCIikKe7f3lxw
	 5Sa/ixHEFxEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F50C6FD19
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 02:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167876202577.19237.9221595861816064278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae589507451f111cc5dfa0ba8ec3f2db1abb0a455037c39241c1c727f208b2d
Date: Tue, 14 Mar 2023 02:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678762025
