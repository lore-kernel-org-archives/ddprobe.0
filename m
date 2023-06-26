Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6914D46A0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 07:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC47FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687765388;
	bh=hBwsI3MM7M+s3N+Jo3IhtIxX1WESnxIqc5CEuKJzJYA=;
	h=To:Subject:From:Date:From;
	b=qmfPK/jUIz/8JEMIV2lwafOX4zxBnQTPL6Fy+vNDuohL3ETZVOMv2tT6VJUSY4vj7
	 mlHnAEXaiP8nc+y0KNGJ9PRvJkZgOmLAoUj8UdmppA7ByYqJPxJkhPizKWMpWnstrR
	 8Euw7ICU2JUoU6+rf1s8To/cgCPIsux+TlgoNtxCV2YqzRZVxr5+/WKqOOl6CeYsE4
	 r8qS6y5vAirxl3C1aEm/XPNk3PCpiycfFD1DxjFqv5MXqRML+PMdaNVFAV1px4qmq9
	 m/TeYH5lhqcXJiwPDqEc1m579DV5aeqon0kVsTkP4/b8nf/8xyjtowOqRZ6zIJlGSq
	 I/UdNm7cN8pBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A60EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 07:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168776538872.5796.4047589897848953296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f18ab7704b014b5b4d9c31618089abe21a242c3ce5f5d79f4912f29f26dbb4
Date: Mon, 26 Jun 2023 07:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687765388
