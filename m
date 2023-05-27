Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB4D7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 19:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1A2FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 19:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685216346;
	bh=+dMHFqMhi51ikDUcUNVd6sfpRiCbAfGqMXhLtP6PkEk=;
	h=To:Subject:From:Date:From;
	b=H6ZGIWzin7llbhqfglqSHglDLgg3k7lL9NalIoGx9UgSnD82Scamz3aR/+O3hL5kV
	 hOLvP0Kn5xJkZ8lwm+SqUcVnF1L9j25Gf81VCaocATpnKkWwFoCCoJfs2k1N34QhMd
	 RNDoZMBCt3DYZinyw6+Ld0wlSQslUYrxILpiLAXgtuB/YGThYIe+x8rdrn/nSQYdBg
	 Hfe9hZ3Q5m48CpWYYjzbKNQwytyoYJqOJyHOBxGNJXDpLWcjIszz0bMz6iTZILs4r4
	 MNZVQup5Mr9v0FtnxmQTWiz0GuLnCfep6l/Le9Fq5eT/jtUzrYBOE+BXN5M4V5o9TA
	 osbh2e3H8Y8cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3169C77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 19:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168521634581.27108.4743123003341155033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609d185357fd86f434f465e3b9f1e76cfb7e1d7020d1e6007e8dc045b38e8f1a
Date: Sat, 27 May 2023 19:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685216345
