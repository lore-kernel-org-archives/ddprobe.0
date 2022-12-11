Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BE83236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1B7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670793687;
	bh=tBgWEQ/DoHIEWAAD+uXWI2jW1ETpxl6Rza1v6RlZIIA=;
	h=To:Subject:From:Date:From;
	b=VLNCPUnmv/n6brpuBtTQIKiaONe0sEYxpr1eNK89859gCqiq1lzUHMEdNqAKbHUGH
	 MZjcS5kgRFWFJ4tGkbv77g1XrdpKHP6LEqq2vBEf7cGGPS39AY2TEFXqoootvUcU2f
	 dKZjS8Tabm23/ntpNJo8nBKeTuMjY1UUjblhv+J5wzgVP/Y55Y8s5Y5yToTF5brENV
	 7ISatxje7PnR9V48VheSXflyaaraJQWoI3czrZFCxuTyq658YiJ8yH2CO9SBYdbdw6
	 GXMoBUsRxtSvOOtSDNNtNIEerlnN7uigZSSTjk9PJYWDT80O2kUFUTldm3H65LRF46
	 q4/36tU/DtmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614C0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079368739.15177.13648863818536697689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa1d8224f8075da1c2d546390c2e9dddbbd336beac8f3ef2197264cd5226481
Date: Sun, 11 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670793687
