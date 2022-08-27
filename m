Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC927C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CD2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661584852;
	bh=JkHnDYhvIhVChryCTmerc8jdx0LIYjwPu5Vmii5Y/Yk=;
	h=To:Subject:From:Date:From;
	b=jT5s0o1ueyGU89Jcce9pEIGPXZCgXNi9jRe8jU+53tBMrELy8KzlbmL3yLnqxkZMB
	 MqGTG68C2t62GhO4g7tSPrd0wke/FsP2YHiRo7cQhjc4MFTNTDqCpoumzKPU/XEc39
	 6xF0uVMzGHJnzF2admm3HosDnMDdPn6GvS507kq2duTPJTizIOE20GrK/mcIfEbSmi
	 Gp+NfIHkidMvMB24CFBUcXIpfawEu8kdK+bcAPyMyHysD9kEKurwWRrZrud1EjC/U/
	 4Oi++6bvRSLz6wpA/kI3Vqaz1PSN0/iYt0ZEHyWEj3cORYebLvQdVCkaciW0c7WuOS
	 u8z/u/7tdxz8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0B2C0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158485237.23081.13719123469326857122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7f492f618bd3356b3edec27f2d6f2ce1db305fb2e98ee2326ebaeeac354ed9
Date: Sat, 27 Aug 2022 07:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661584852
