Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BD47F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7421CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662863453;
	bh=v8Xf6Tk/zF7yo4X5u1tlczY8rRpWgI6vLM48aFZMgV8=;
	h=To:Subject:From:Date:From;
	b=ne9ywR8v3BYZJ5aXdbb/Xvs/Z2+heZ7+Oj4lLrxzAlBxwnC+Z1cfp3SX77xe1NbUj
	 L4dgy4e+UkRfcFgndYksCZxU364gTYQC6V9L1/dlulRcWxbSMB+Y4DkaU94nThbRua
	 mCGdoDPnNXaZhOYxGlJNF8kkEs7GqU7aGAnQyTJIblzsX7rdx8Dxz6Nwq8I6Pfh7lz
	 FkekYegc/GXi4ApUmMxji8tlFaROIQrkEYOjOsTS8ED+nR7UhX7dbz45Glrq2QuI7I
	 y+pf5rWWE7IayIEqassGLV1pC8oCGkh0/fYLXB3NWHdcY/1vQ1KzF+F/FjNzRfI9qi
	 1xvDga5zzi3JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D90ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166286345334.3146.12933055096681653214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c07ce875ae205a16d188b45e8868d4852cd161c76e09d2c040d8675689cd3c
Date: Sun, 11 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662863453
