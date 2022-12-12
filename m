Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5EC2F58
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 966B3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670877087;
	bh=DZEAQhtPePdaujqva6vmXNEgqyB9NdhUexugH0KYmvs=;
	h=To:Subject:From:Date:From;
	b=PMDSnhjpUap9AMZ18o3VUpLjCP3PvL6vQ5+aP6vbyMQ+AIsADOpowSv3HTg3X7kbl
	 R4u3VYusKWtzeU6DObUZ4VjYJ5Gpn3w8pysxP5Kw+VHk0wVBc334BQM0BXYDX8xYfz
	 Og2PgUKr6Jl05uJf0XqAzwxwIoaEcMrfNsxnJ5cxBbczb3+UNuQQEznObO22OeKsOz
	 CV6fV5KD++VRgrDTmoNREPoqk0RtaBGPEcsFab0Z5oa0maSWaDJvybk5cTsRyGFNPX
	 WwXX0A8aktXbTl7QQLyna+T7MuuCkO2sOMTO8URvSQL3wl4sPFxm/ZNodhihA3TzF/
	 +g1MVyoA/ZJtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C567C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087708748.4632.17368336538258525845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849dd5c42911519fc51b569a5bff539b864774fbcf4330d9e9514c3a34b7a5b8
Date: Mon, 12 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670877087
