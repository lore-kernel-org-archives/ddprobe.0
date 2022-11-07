Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99CB23AA
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AAE2C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667799054;
	bh=XxlHJoko0nYbTYC8LKUYNi1htPS5jP0LgX927YgA9WU=;
	h=To:Subject:From:Date:From;
	b=C2sLpqWQlMUlfuCn/HehPx8SdcK7Tv4UH/Hz6sACSOztIeVuW9Hzuacb+pQK6RIay
	 X3NTo7sh3Wz+MK1nH10p2xMsxJN/oyS2Hp77OJCFCD7i40FFSufu/ddZzSCOhiJr9P
	 1jKJ2uLSPG+s+mX3VkXuvT8si9qvCWJzk9IFQHU7rRJ253lIGpa6xa2W+rUshpP1oZ
	 wcJ/kUFLG7IIJGAKAZwed5Tc3ZN5OP+QTwrum1oCFvPlnOAi8bgqxX06l8nX1S2ztl
	 pISU+8by2R1Jk2qOR609lNIkOrVu2T19MN2yMsz/tqmRc+Z+UdzKfCI8e8ZGECLr9e
	 LuPZARGUoiTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F81AC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166779905431.4205.1834360153568908577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ad3eae20aa15182c7c900b5c11f351387b9cd17c2ca3d8229de4b62a6fcbac
Date: Mon, 07 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667799054
