Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E36BA45
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B254C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672864887;
	bh=z08jxH2MA3EywLM9S+NIuPJzJKbfUxxI+EZUVBxGzrA=;
	h=To:Subject:From:Date:From;
	b=kBHbIxR5tc5xWbRc6km2dSxmUygx1TsB+YtfJuhFg82O7ONc9F8mms+x1/c23PSRb
	 IzsZdiPUfXIFfS1Wca+SFjhAuTD0ECJTkEukmakLxAlvtE4TFyLIhtI0MX/qAbD6x8
	 0PMbM3zcbTsUV4ArJ6raQquHRytxmqGkK/3VZVie8HwnFqJKY/elTgWPfOS/WU3W0v
	 t7APo7HLup4xOqsd9+oOudaJ2l/Ss7NLR9yAUCcs48DM+g/n7PkuXoPnSn9XCZL0rN
	 Yn0ILfol9qC5LcsQcEkRfK++zc8RfB3sgIgjpM5IC4/pskOuQjcI3LVLHgRsgmnTaN
	 lsOTkdekhz2Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FBDDC53210
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167286488744.16499.5881527111998389708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc18d3a9de53750921b3d0b825016b5ff17f25378fa0d836c100755f5335a2c
Date: Wed, 04 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672864887
