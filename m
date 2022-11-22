Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C0510E8
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A25CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669104654;
	bh=XEAwFaRTe2NqwloucvzRGtll9nA2XRmuKAU4EN2eBr0=;
	h=To:Subject:From:Date:From;
	b=cfBqSdUr8mH/+df5YIa0ZZmIpnkiTM5MrUdNxDBa8bP89mEEUFXC103FLLAq5Mf6r
	 SIfUCLjbzBoWmAuXRI4+sXEGB2qDqLWTbwqdk7Ftucegdl+xoV4pitWyk8RIDc15dV
	 /r9GA8/ZLERnSZ+LMORbFy4lVVoiHxRWSqbkA+ezd46hx2Kjnub+ZEY3NgFxJ/Gwal
	 a8tccgzTyFjXARzjw5a6XrQAC/4L8bA5cko3P9MGXlxhKTkGOV89eXhJE7aj/F395w
	 dBphHhD28m1Nj5KmxqO3pzGz7IKf67d7SUKbDWws5ogARgMLy3j2mT8kDFkbOn1z+K
	 FgAIL6AusREuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DFEC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166910465432.16967.11847895315977453222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1295f1c360525506ef24f402f5c7730916155ff1ff14f3765dcbae7732130dba
Date: Tue, 22 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669104654
