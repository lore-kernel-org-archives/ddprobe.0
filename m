Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C34DD2F1
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 21:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26C9C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 21:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679608205;
	bh=/DNSluaEur7WHkEZlaOSdRKdwvsBLX7lX/YIMecx0NE=;
	h=To:Subject:From:Date:From;
	b=TENQ9+vjGwH9KtBOpScWAHsMNB/O6h+lMcT4p7/rPoGf8GoSaVt2sF64poClJYuLX
	 rXqMgINHm6M+OMgZ9nwhdFssZ1rVslEeCAcKTU8hRoQL5DX9jqou3d5OXc1QaPlKqy
	 XFBcNfuXzc8S6y98nSaBBMw1sbI2fGlnorTjT+Rp4OLmyk2Lbo85imWrf6XW+ng/7H
	 umQb9yrMwXTW4RL2W8F+xiV8gHNATHrcD+BDU/KIzH5l9IqVG9BnK30TRou/hPFsQ+
	 y4g+McThVn3iRiUXA4Qi8GORjUGZLfFRJyGbgTST5XAIsfTKdH+yZooun8fkRPnq8w
	 3h7O1kCxBI+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C375CC7619A
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 21:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167960820578.24262.18352363201613451326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c5037f2c471dd7a9a87b29c8b9ecd7042b46cd975f0d6273ef5c4c78f24f5f
Date: Thu, 23 Mar 2023 21:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679608205
