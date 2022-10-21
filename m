Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D0A7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1BCC433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666321253;
	bh=/XozeiIvkyOczMsZr5IScjUw1qBAJAbQwbcsGxVTu9s=;
	h=To:Subject:From:Date:From;
	b=rUvRS+mady2DwUVzJVjM3E+yZ3KzQew+xRBT3vSZ4adFbtjNt+0333X9SH67Q9aKk
	 K5qPWxDQCh5TjXZTSUYcQ15HQo5tGZTSdYTK+MVChm8hpb/Gej74AIdFdykxXSskHU
	 0HVxKVKgvcn3Z+P3As/DWwgji7BebcUPvlRG0m/y2BJiGfaArV8OCLU/zAyf4F2yiK
	 ppyinvAiSwd8/TDQjS8MNYzKzYnWwXwlnzKwnqzdXr9yPjlooEAu2YYUBBPNQGMLIp
	 ZpsQlyBWaj7aKPiBcSC9oQ3RSMsdAmZ6zR5OsAI84g4Q74FF9slGBvj/oys0ibCPqr
	 zkfrBHJ1WR/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5166EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632125331.2255.940568601879980287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8700fcc66ac3be1641461b4da8cb621c00f9e2be87c81e2125c11f9a9c849623
Date: Fri, 21 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666321253
