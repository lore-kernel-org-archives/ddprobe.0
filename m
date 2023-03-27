Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415A463D3
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 17:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6205C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 17:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679939585;
	bh=x2DmfGwjzrXjo3DcwIli5J5yXGW03MtpO+dMJYa+h2Q=;
	h=To:Subject:From:Date:From;
	b=YIOl8aiqzW8m17pOpkxMr+1I5aucQYvOUDhrmT2vcgRiXvujoRtYDfh/pQWTF+sIe
	 SpImCUb8irdqdpl0bhTkufzLByO7Wqew7ujtMi1Lh9CpG2uXIuyo0PJI66FP3kWuKW
	 j+zzYpJ2HgrnQN3NzEWgn4OIz1naFqV5gPaA7dRIRoFiEqjxOaa7TWcisF+PkVPPiO
	 rVFoWD795p3uvVWPG6mlpwqFsO6qVv81VVbiC4hVm5Nh4jwzXMY0+GDvfZdU8R/lCI
	 Py7Lys+FFJF1nZfxVUsWugoetPEyntIlls1/6oi/XPYYhzdbXS9xgRxTIYzjcWT+/j
	 r3uI1teFJc9dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D74C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 17:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167993958573.28234.6577767827377051741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75cb452f808ff25d6e435b3e7330489176a7de6256fb50237120c945377b1745
Date: Mon, 27 Mar 2023 17:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679939585
