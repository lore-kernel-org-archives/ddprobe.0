Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF8136D
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D85PekwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86987C433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698715096;
	bh=r3JIO/GPaZramNiv7GvhO+qpah6GQuCCbvXkmvaOPxc=;
	h=To:Subject:From:Date:From;
	b=D85PekwYAe2o4rhADhP2qqVk+SjParU8zxB9RX3PV5BYIZJXz+9/B5nvMFN892MV6
	 jvNBCHwibD6otakrpxqQsCWf2QXwDn7J3W7ofX8xFWo1WB2E6CNVihHESjN3Mby+UO
	 mmG6689TZS4LAA56kvM30oxRVv+5axOBbngKqg1yRARql/XRERqOc/srg76r22px2p
	 E+8nyRu/8aPPoF5ZXfk94Mj804bUH0X/VT8FiNUczV//0Dr5GND9MpBR0JueK+fKG1
	 Y4qTnEzvcgcdGuRo88Evx5hbQXyBBqZ6VT/KvAFHrchT8ItuiiJYZzOPXm1yZkqv0y
	 6OV6rOc/a3Amg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA17C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169871509643.17728.1613182048092217831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ba165f14f474c0ff4c364499f116f3914c44b36768f27a6d8a56eceb4a93e2
Date: Tue, 31 Oct 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698715096
