Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37BD33DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA62C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665497453;
	bh=7W4X598jaI9zCO12tSUWfxj8BVubd4p5TfKJVJ5p8aM=;
	h=To:Subject:From:Date:From;
	b=B3s0mcI2tof5K7mDWJT+Z3JbFzEyrZG6nyuHNQ5B4iJztcueciJIF2y3v1n2WHb92
	 QQoF5Di6P/BHQzV5fVErX9vA1RlE+SQovKTOWWBUeSRwtU7su2EQRZJsUhmsJ5JYFT
	 alL9XYXtaT1Yt0k7vXiTpmoan9SyW78Fx7Ey+nGPA1uT82b+x/k5ZaQEU+YsPVU8UI
	 0gsVkvAyK5HKWtLaF2eTTnM4wnt0L/E1+YM0j0/vj7YMwryF/TpOexydCt8UxbcWi5
	 4rnahm5s7xa7Yk3lfkdnw/pNz/fcsReJUYn4Vt89UVtBxdMm7BNw3vwUULPmJmaw1g
	 WoleNAMBK5kmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A42C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166549745333.14568.7282385202506448963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da534e0819c2be01e9c41b4e0ae999984596081980aa8290dd7f5e596eddb9c9
Date: Tue, 11 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665497453
