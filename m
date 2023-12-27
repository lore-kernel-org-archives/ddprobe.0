Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8EE1FA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8LZPVhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B3FEC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703641696;
	bh=gDYdtoN1Ll0fDQYvhoTuUMAR9nlOZu2/tUptmrbK/Ns=;
	h=To:Subject:From:Date:From;
	b=T8LZPVheLFy5YAHMP6Oihryir2FWNRttPZJKdy05shQByQILtz+vDkFl3M+edhkO6
	 T+FHprpBNirVXDBNHirvm+JTJRUeYflCYOocBvqkI7n61X/WVKoq5qVIPwGQF8O3aV
	 CpWYhJLuFRiNUv0g5clHrJVvmCUwIv8iJ6f0HlvqJotbY98tmqsi5JlYxsmYSRQRuD
	 T0z4sHLjaIEXt5hr8YpK9vs9eOSh3bdIEeC+uWiGzpr1ElpILT2seS/wjWtzSONlzc
	 8UwctdQFZvr4bCFP89F0yTMB8XvEqPLttICpgCjETFxV4EnmOQ6e6wxoBaWtvTbshK
	 gmow/cbCXCcEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 755C3C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170364169646.22407.13056789808981460543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811d4521a3d273547c61c4df6d3cded28c8093b91d9b1b9f8af1436cf7b26c52
Date: Wed, 27 Dec 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703641696
