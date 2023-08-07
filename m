Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F55512B7C
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 20:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AD4C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 20:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691440388;
	bh=L189DYpz1yYMA0AHxtUiYlhDDZkK/WJ83uJIoUb04Pw=;
	h=To:Subject:From:Date:From;
	b=e8gdEAYRvWbov97iqH8OSx7jPpxzvk4Jjb7bgMwRyL1fj17w6HuT4Es9HECyuPR2f
	 7vwSYVg5aWcGxtbUAVoNc9dBP2IfV3P9cU335pKFzQK3CFLjZGx4tmEt84P8sw2YyN
	 QmZaVi95zVKUhCFNibf8k8Zijtp4SwHATGoTLmSg+OLCW7v69TaNXnC0UWZ0feq1Ym
	 f+706Zhg/+8s+hOhuF85H+gnJplO4ObzP8T2w61bluQOzayn8pzvTkjb+S9RIYZXw/
	 1qPrTyhN4VLDTTF4sP95FZysNYLh2yFK9yhYmLxipCUlrT2yj7eNAR4YIa8HydYX1S
	 aYQs/Vhxi/pSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5696C001DB
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 20:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169144038866.26320.7587218431766574220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b82f581978179dc8146969b944b51fc5f06ab3d926542eea65751ab4928d5d9
Date: Mon, 07 Aug 2023 20:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691440388
