Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485737B
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 16:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E871DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 16:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676479085;
	bh=A7Cl/SofmBYGfcq3eV8PEAYnuUNadjF2fZHkAt9RIJQ=;
	h=To:Subject:From:Date:From;
	b=GBdTzs4/fY01+K8XbTfhtx1sn4/eHWpXbi44OHuQiIsaNpYusDGjBqeexM0Jh4O3W
	 LrNdumQCAGUmg/iOXTb9SoY9Y3dGAudykG6IhErv/7OeZFUQ2ngCGQiOf2h0VwfL7P
	 I5Fxb+yHEyOAexpYy+idv2298IDOx4gFCY7lGb520gFvFjMCAM3OwgPq/+ESrseETU
	 /RywKHidtflGYYSnc1E8pTe4LV14GRWmwpWmsnzSAXaTU4hzj7abhJGgxMbRgKE8UK
	 9F4HTAlNrRB/WYiZDrhKMNc8qQhinmxSopA2B14RMDtWJZwtbitnWE7bHurX+J7m++
	 Lfa0Zw1cijlOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D23ABC636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 16:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167647908584.14669.2901337911367669972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252c1e1b636092107efdc37b539f9a9ba870858ef23cf96ec8cb94d4ea7489dd
Date: Wed, 15 Feb 2023 16:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676479085
