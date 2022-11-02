Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B926B65F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B877C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667377254;
	bh=9UT3HuoE2mz8EjvAVf901AJumNHNtDfhQQuDdoLDFsk=;
	h=To:Subject:From:Date:From;
	b=FfQJ7aLrEh/NtpV4FkpJ2Uvr3l09tQfuuWazwhKcnjVBA0DcTPQJu5U3Nm777JEgw
	 VfuCOP4dN+K+JlGDq8qziqaKMOnZ5HlaU8beGuLwPnLRbf6F1MPLKfEQrdIufyo615
	 taXbtljJ9et0uxWZ3vZyAYUcYBUR95IBf2M6Djcj4RQMltT+ba6p3xcXuXeJCtkR7h
	 QjErvShWECcKLJOdpiV3x1W9q3d6LGkfsoUhmG4oCWhAQMiGmzohOn+QkLOBRp3Riu
	 M5aNx2VhLuER2xX2HyV8C7vpkc9WXMt//qYHTKXYIXzGKN/VNWX9Sk2iIcBjSDrkzf
	 EFhqA9euJrgZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539FFC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737725433.26909.3016870420637070399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8587681927a07e44fcb79b0ac99873b24760b6f784dee853f350bc1cf575658
Date: Wed, 02 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667377254
