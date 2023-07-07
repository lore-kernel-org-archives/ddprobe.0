Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B87CD2F1
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F52C433B6
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688744228;
	bh=3JcFZMw/MSJdb/0nsV6+IsxfD5Afv3kz7hSOFJghNv4=;
	h=To:Subject:From:Date:From;
	b=q8uobbUXai3xRENDtGdMeSCUPeA0kK7/QThtlsSoO1AqvWFSNjJ10gfL8loSfUWqw
	 OOHpLVNQo6MWiZkdKqEhCNJA0mimSnqzGVKobLMEffQXaDm8PhMuhzQklDbN5EQIq0
	 dN7EbiKXv6YfS9K5LjImB+yESNeAlzeYRk6rXNrwCvd3LVr03NUO+kT0000q+DNCO+
	 zrX83iIEJVUil54ajKA58Riw/FJwEod6x2cBtbeHFiH2tucxtmb1MxxuBDaxUGg3Gn
	 4RYAd0UHQFw9HI/U2z3W3NZdJIlosLgz25rySJGYR9zTQOxBNJjQ7bVKljAv5R+EGU
	 1yRUFzTVh7UmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA914C0015E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874422875.18914.1743011061518955590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5d05977f67f3542a948b6b3fa0a34b562920cd6df6c8d0463e9e791c0c5ed3
Date: Fri, 07 Jul 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688744228
