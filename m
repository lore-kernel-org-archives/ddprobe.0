Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623CB5CBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iK54iJMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59FAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697296028;
	bh=6scXsxV3RRYQeous60/DBXSfI8oXalit/qELl/0BsxY=;
	h=To:Subject:From:Date:From;
	b=iK54iJMHe9iu6Vp/jEWll/bIVFcBYL4GC0rOJ0IvxVUjlmxJBatURXakDbjMnm1R+
	 jQlN5b6rOy3Mui6jHzBAhEgu29MkFKHuITNUA2e8s6Gg+7FpcFkRO2SuDr8gNZgBd5
	 o0RaJF1bwq5zplFQcgV24L5KFMUCXD/MR1ghCd1s9nm3oomTi5m/xFcJg9b+lAWuxB
	 kof9moVArbUahj0fAchrOJ4W1qkCrz395p0JldOX+YIHH+t1MQKatUK9K817ePs6D8
	 QRRRVvblHmvL0TU79S/XerMq7+GPs3PiiCm09epu63vsIzW/AvVXh67egmKApct5dd
	 FfFiUSMEdVcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA555CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169729602866.10424.2413975358473890996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3ae678c5cd116f4dcdaa85281b248a25f93c5de2f763dd4fec3280fd9c9f4b
Date: Sat, 14 Oct 2023 15:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697296028
