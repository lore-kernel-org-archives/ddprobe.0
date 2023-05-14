Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5007010E3
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 01:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1536C433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 01:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684029486;
	bh=nIfzKtvTtscMZ3NIPpBCMDp4ah6W9qkSglC6GWXzHL8=;
	h=To:Subject:From:Date:From;
	b=LQhX8nZLdok5A5K9SjauLKNWRW8bePM6Ed4KpnLh5xD1AWghlSXj0n0W/gOnSyLes
	 PzeDUXc1DFIINHm/Yq1LyRP1GLubI+nU0oYW48wmEQtY5vsdZghwsLTdf8cmMbOBJ5
	 HChds7vbk+yixEpy/t7SYcH20nwGV7NhKQenaZO3iOk3Upc/4sONBOiW1PRbzeVISB
	 Zfq/9jRZaHDIfqaNrwf4RFpkz5uFMcJcNAFKq9nev04ZRY5MXgRyjn8FGKX5sv9j0a
	 rtiBAnWanL25Lsb0vH3nGeLhn3k1Zo6eI8L1xfgXSbIYYSHsqtrIA7I+O2RqI+NWGg
	 keOelHl3adeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B4BC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 01:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168402948576.23116.5771108484618866137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d953e33847623adb560dfbc4ee75a378a77d2d085e937b684745b51292fe3ae
Date: Sun, 14 May 2023 01:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684029485
