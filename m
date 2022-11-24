Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2B01C05
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFD5C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669256454;
	bh=RXjtlXRkgWGRBekH77okX4vL80XmTG2raQjc+6P7m0o=;
	h=To:Subject:From:Date:From;
	b=ONispRs4GA69S4HewE25PhtGIoUiRL5PH6DMM/OA9OVXHXz1QeG/zZD3peL/LZ46b
	 LDRuaI3rxDHZFNxUjn5LLffdol0XbzNqlUX26QuGv4gb3RmNryR7KMU4/g/VrC5BIN
	 qbp3GQLQJ6qoM41NjvvGxON0JA7SUqYJS8c56Fl04yGo3F0ebSqMw+i9u0ljwilMNf
	 x52QTD/FVnEhkYw6N1u5GRyylh6Tjuh1Y8rhCpqHsxtt7AlbIaIbMjVeujVP3mDLxw
	 7ZCqtNfMFOGMsU2V6I1/QluryNZ0gcDxcVeA1BS8w7+vPtpnYOOGYSpV1dLgcTMNID
	 /QzFQwiaLX6Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BAFC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166925645433.30898.2629803685243637946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1ba46e2b1fbc4970f697400875dd1179a9ac7d5fc12f578f614645e3fe0e47
Date: Thu, 24 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669256454
