Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EFC7ED
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F84EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672112487;
	bh=TrBjTD8gXx6NUCzS6f+TWhTkuUmLDZ7OGzFiRgqYKsA=;
	h=To:Subject:From:Date:From;
	b=eJ0i24tvDHQfxdgV1Fc7o0JlF7H1+ZnBDci9QSqB0rygtAwJ3SRfnCp8RN7mvM5NO
	 M+J02p6sJ4VRvgXKNO3gaqITDFOmUa5nxrTcj3hROMyKwPiDNwG+DWwkDWjbpTXVMb
	 il3vN23iGgjQA86BloZ5BN2umPI+Ie8VPg4E0iD5wR9WjuMsU7dsA0iA/qMn3Ogi2S
	 seL3UnUbK7pg4Da8AuDyTUTUzGaFL+zWCdqdqfr0mwt9woGRAKk0gy2+BLuIsro4Bt
	 MjhsC/Vg57HMU+13MFC53YYZqss+mCC8j/UEfo24pB0ZUWtvmYv8oPZ5bpC8+CxbFB
	 0fKdtQF5MjJAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C011C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211248740.11111.3258529145799122534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21d0f722b6548e6324c69bb54715374d4fcc218fdf016a65a7b5fa386637099
Date: Tue, 27 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672112487
