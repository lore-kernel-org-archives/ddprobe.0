Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1943E21352
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCljbksT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E40C433C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698084496;
	bh=P3CVdXlQc8b08apK1hDLgES/CYkPgVFYs9Oxy0YZmVE=;
	h=To:Subject:From:Date:From;
	b=uCljbksTmoWRIKGqp34Yn01dm3UECZmDOelqGAkJJkzSJBDzi0DLh28SxPV6bPj7p
	 cD7QK6HkBgt+FWhzKS+Ncwq2erJm2kvsdJUfh/uI68YNHcPOqDxZIDv3VEaDSGujWh
	 PatdYAchSmiNND2k0XEpToBdauNy00GbAN3DSeOfwkjDT1fWdqfmVULGBtlRJi64fr
	 U2F04S/YLuwigysRHBDpkgEoc9JUOhRphtBeHuUkrVYQvOKomZTl4OFNXwSUzPAfIg
	 7wGmKdjlMZ3HTGNZqNqYKN9QYmpvTn9a+N2DdAMQAedBq80q8+Fm5eacfRQzMkW2m2
	 iYsKagP8QYCnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8BAC25B45
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169808449643.19552.2284506932395614674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3f4e1c4426dafb989da5d7bcd04d5c271a8dbd030a1b3b8c27b85f1da0deee
Date: Mon, 23 Oct 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698084496
