Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D8A63C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D057C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672170687;
	bh=ZKfrdXuyaT0FIhWz8olkdvaHS+pehdaRs6jXlcLV6U8=;
	h=To:Subject:From:Date:From;
	b=pq8hE3FARzibYXXJZ4Eb1GbRcPNT67R9HBZMw50D9DP2Kt6jy/m5U8bfpd3b6evGc
	 05M4F1C+XheH088SdZf2kjMkfOEaGPCO5EOjjy7Duj0PHk/n6QlggPjxVmkdPqvGhQ
	 mXD+awdG2YdFTvi4Ybe6GPTdrzdFYiIzJTcyhVzH6HuBmdda6aDGt7Zuw2EZoHKJ4E
	 Hkt8JqFeQiXcKOBNptLdbSt+3NuxAFKDuhoAltFVOakwrnttjV+F/lVJtm1bZb/DWN
	 2A86Jv79BeVivvkJxsGdVHoLJkJviwR92l/wdL5s/xO+6gNUZBVrIsPATuMnhxc6WN
	 PXLEvj1ZyUtiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651A9C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217068740.17290.7011152288452260451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a14aa0a948b6f4f989ad9bfe60f1576dd92d5824fc068df1a603576baf1163c
Date: Tue, 27 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672170687
