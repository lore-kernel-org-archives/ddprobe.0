Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE6628EC
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81364C433F2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673974287;
	bh=XGmgVT1rVQ2hC/LX9ZEKmU7VXArllNfcO+UHoimTcrs=;
	h=To:Subject:From:Date:From;
	b=NVZUhTEESMDGT/yzXt3acendm442HwkByYjzTgHCSidDQACB/lA9q4Zoh6Sf0YbsA
	 VW16pFu/bqTP29UdpzQwkluwjf31rSD0kMuucwUydbBkgYwCAblJJ2y3wlA4zSXCME
	 4h95tyKVetD2+EeV2Eg/LGOM1lZlkBwOkUjCYze7mvEqyRwM0CZy/hegJoV8LLxZoD
	 rmbdCZ+mJKsBxWH1EpgvIKpmkFYe3SATPT1SmwXQjjMZ6JtouAQYPjvLB3hTHtZ6yK
	 tCW3pX48LUh7sY2qog93SGjAW3UbFFbRYeTKdZ+MXQNGIcgm4wgQ2lkCoEkYasFDgF
	 Nt+6aziU9YEEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69412C677F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167397428742.26188.14246370619141403719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d69dddc8f34db9b1eaf89f63159d7a63fb328bf492a3e1015f0928dc983439a5
Date: Tue, 17 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673974287
