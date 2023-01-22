Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385E1648
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CA9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674385925;
	bh=CeTYaGCIdyKWPG3dLJZ3jlxFBTuPL45Drnz7ymAa+VA=;
	h=To:Subject:From:Date:From;
	b=bkA7HcXaq11e2VNT5Ez8/TIWLvfgoaa6BeAzcVQgExoA9owumP8cA7GxCoTvESSMB
	 53vk/ItN71VYjEYQsD9GSZClXhfwtg0CLINBQVOzsLDluMzwgFSyrXOGDjV61efcoV
	 m9enasKiPvyFqIeqjaEwal3LEOU8E4eY2bE+cvBh74x267ox/k4yg3Z0a7xcUma0LK
	 KzG5+EeaQw8DjeOMvsGY1l3Ivr8j/OiX7cGYL2VYfUh9m8DhE/cMmkhUObt3+UAoqw
	 cx8DayJ4y7hG/5EfrGet+MpL/onpZ5wagyp7bvQ7LIxKQ0JGYlNAYN4w6Bis0AgNDT
	 H01VO2BxrQYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB72CC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438592575.937.5633658247329938082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c48df7a780c5f142f7eb9e2601f41f3283f9ac02fe8b760561a5e6ab75069a2
Date: Sun, 22 Jan 2023 11:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674385925
