Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CEA7F4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 00:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D174AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 00:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676076245;
	bh=e/6ti2XejobcAl7OBOyq17DoDlgg0E/IG3TUHdzB2NU=;
	h=To:Subject:From:Date:From;
	b=jHH1hYQVH/ozQNw7B4+gY/sPX7AbJA6Nm5Xol4+kbq7P27Ff8uY2NP3ZfiyJsRw2t
	 nfCGc2tDwpgwXNtntFHzIrBI7Q95Q9alvAV0Kd7e07E9VVeUmsT27p8XFAJIVPgz/D
	 B6c3vmWkhwkbhp7fZEzrYQXZ2DnTiDgOOPp9+v25wAxbom0LFOMSDL7ME6S0sfMbII
	 qOVr9YNAA8r8JO9r3kJ73s1vm/5tx/wgRLpEhzHjr0J6wXA+0I/TdXIMbmaYjWff/r
	 uMwa16H9RqnojbfenTVZiQj2m0Fx1zlfLX8u91cR44WkMRjA5MTcr+AkkkCR6AaGzt
	 6vw8evTy1lg/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5695C05027
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 00:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167607624572.15662.10779954839445534310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207dde1f9c13e5d54409d24482128339c174802ebfff3999f7a416a9e9a9ee32
Date: Sat, 11 Feb 2023 00:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676076245
