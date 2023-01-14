Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D246C801
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D30C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673674287;
	bh=VNENYoRk72+m+SSf0Bk68VPVcoP/lURiPIoJV3bp85s=;
	h=To:Subject:From:Date:From;
	b=mpe467f2DzJjT0QhxNs6s4qMrFxK8VGyHHEQNi7KwcmGwZzCuOEeM8unStVqekyov
	 HAkKef4sXZjSJWbxkyXocAOa2mlsLIGxXxffVQWBxkz1Hav2FQqd/rwrdtLAN+8gZ6
	 VmD1fqQKqclebIV374CazAT01ZlO121VaceYAcnJmqID2m+0u9dXkXGEb/ZgKzJiHI
	 y85vXM84TK0WM3jsWvlp2saBGT6xl237MusYRDI+JP6DrRkpgdXFtV+zYu6SE+orXn
	 C0XTvy4iZ+H7W9ruJGpZaOLKXCnlSsYTuAoaACC3zJiDncTMI9vxpKDlYbUg3yo45s
	 ILvkqG2xc80PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B68C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367428740.14996.10977864736193193940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c967a7acdd994354ee4484952a14d9e2589a18f812dd36f5b1625965cf5d1387
Date: Sat, 14 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673674287
