Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E69C63DC
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QC9R5EAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C69C433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704532696;
	bh=N7TN+byJ6ir7TFhSoPEOrJP6fY0IKV4tbAeMtrNuik4=;
	h=To:Subject:From:Date:From;
	b=QC9R5EAJJhx+vg3qc+Ubc7i43pTakzfzJGGYNr5BtciuYbwQnwP6WdwPRXxfnkUsk
	 1z+ASFSAewr/yVIGA1nswW6Qv9a2+LzrH+GHtmRCc91zN9SCVs/EFd/8IfuwYTUEc5
	 S0Zc23SAoLiDstYqEpsQEXo6Iw7sQgNrYpg8UU/Z1oC8qkZKzF09bP8rmNrk63rrK0
	 41aHh4iRhx3bsDfOMbtwOX0vLWHJA3YJ4hcnGY+9Yz7TyMhM5K91fIMD80Vugt80Fc
	 hSzEuUNX9lp+35kRusIk5hUa6u3I6wDuhDNyPX1miMn2mRYK8UmRIbMt0MZKbbgb+M
	 zol1z9KZ6jjaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682AEC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170453269641.20839.7424545280301848906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab80fc0c529f74062772a372fad966d777094a79c55c8d33678de6e852b9409
Date: Sat, 06 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704532696
