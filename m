Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B926623
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2491C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693706048;
	bh=3BSqpfrIyNzU00gC19uLf9CFTT8HqqN7XMNixeTVKX4=;
	h=To:Subject:From:Date:From;
	b=rEh06R5Mkl1XVuBOWCY5zbmyBmG76Aqhcvk18rYsP0524BLDLW3TNx8odrvQlo6RV
	 O+Sanw3Vrs1nxyVkUmNEsE+u7quwxvggZ8e4FoPaZcVNgFO7oDlrYIoJ/cu1Yr0ll1
	 HV8iy1YpxVbRR/OWpDn9ttQ4HdbJ6ZzdzFD4+rCf6eZmxF0xg8VEI3e7G2Wq8fiTc3
	 kSxi8lD1/kP6xXtQyg0Y/1qSIEzm0aw8fHeiyR3j4ol4lOjE9DwpyjiPgrW8optr+5
	 qQlsgWzO5qOLGuxlD+M6nA6m7iUDcMUG6GNmOTNO8qfOh/YmVhmQYEZukeseDyXc4M
	 fIJeVOtEqWMOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D0CC83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169370604874.31452.11652869605360849389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6440e7ba08271b030bc027be3d49e0fa71017dbf0ed240fcc27d289992a49eeb
Date: Sun, 03 Sep 2023 01:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693706048
