Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0286617CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUQfh9kL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813B0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700528296;
	bh=jyn5/RYX7eh+11ueX6WZw4V2aGfUFX5OUgBQ2J/DQ7M=;
	h=To:Subject:From:Date:From;
	b=DUQfh9kLCN6MCHN7S03pzJst8x6TbpDxyhc1f86egrpL3rqv7PFWYDHb51gHfCsEB
	 /VFpZJV7Ea+EMad49eEg74t4gm8kMcoCcXJ0OFE418GcdjbK9m2r9KdJOYjKjq+4N4
	 J2UlIfkdJ6p3e+iu2uZWlhN57EyweP/PpI0JHntNkdbHKPAKIus4ctai99zbwDw09U
	 YhGM4MuV17ZEErJN4wqiL65vrwMz2YUOuz2J+ENJSM+IwwExesncehQQg9Kc9oUaU/
	 GC2F+dA3HOPZyE/qlZ2TYXiom9/SyWvHctDQ4a9uOA/+C8FUzVFLcBnvA0zKLxzBSE
	 PAQ+LkQ2NUL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665D0C61D85
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170052829641.18468.12275945041991173427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21af403c366904d4bbc27d680e2919a7ba61f11400554ef558168cec8cd3e997
Date: Tue, 21 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700528296
