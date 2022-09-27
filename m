Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCC1653
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67AD3C433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664263253;
	bh=nck6WuDRFxmImqOva5Bly5CJYeFkNR9Vp8N+3I2+SU0=;
	h=To:Subject:From:Date:From;
	b=nFFOuzEB0dc329YBnG1Vo59rh8WzGH0cMZOqcx/kLAea4MSPxbBLmHi4aPXh64FBf
	 fdkFgeDHcMpXCLRiEBGRqulDCtgiYBPGxJumHTv5UGQN2Z4HrnIlBoYpRtZzA7N3Mg
	 OBZlVZ/vYQeJQfQAYQr6AF+HIn3TuQKQZS9rbClRyYLn/h4mj+fnRZ4myWLR3qUUdu
	 /H+qndoUOrrgXoPtAhKLR3vCnjYlpiYPjqkdBh/h8ynrvwbJowEmuu9n7xM9xfXg1A
	 5TDvhdNF7alnpSyoJrZ6YhrlICP8Kqh4SKOwhciioKU0+g2F8Ru0BVhpE09xMuAwtn
	 bJWGPVh6YmafA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52182C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426325332.7601.212699260508123956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df7bcfafb36f5d21ed79a712ea9e1eed55ad4f078d4cc7afcdecfd40ad365df
Date: Tue, 27 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664263253
