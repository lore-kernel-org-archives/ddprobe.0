Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584BC2108
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 20:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB3FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 20:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690143728;
	bh=eOanG6SAWDHzQ2zD5zzIYgWuh6fvXdWpYVItPNEtnBo=;
	h=To:Subject:From:Date:From;
	b=Ep1Udyk/bbbdT2recikRi3AUCZ0LUgjorUJLjBpC9BiRmqEFp8FCcGowFFdDL/s8p
	 U8EDSzr2Y4tJFSP+pdq2Qx/JxP8gfUqdPndKpOrAEHMRzD6dXZYgeA8EqlqG+bOPWP
	 XbGPlZNI7BKEH9faZuMJws/RZGaSWmDEOANxiy3O4tr24EYU6FPsLagV8A+Lvm4Sz2
	 lZFjMfI4i3Jq0I9t2uTQzA5HgBRIQOTRZ/S/mk6NAgNcN/ynUiZTWUvFy4BY333gKI
	 SnbghRJadgnn4Nl6LCSMGAXazG3NxxR7RgT5qSe/iEYz6frZUBmbmYFkfMeF/kuf02
	 qipsxaDtVwjUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C39C001DC
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 20:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169014372872.8917.7490685435048960836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9e9e1d007f96bc8911a010d9e03e2de0b9030bc7b9a63401316329f3f6035b
Date: Sun, 23 Jul 2023 20:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690143728
