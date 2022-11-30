Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34F0A42
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F92C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669802454;
	bh=5WEvQsChMz9NG5Kme9lRWdYQ1vIsHXtYrcIlLenoX40=;
	h=To:Subject:From:Date:From;
	b=CjKMRTdCauG+nPm6UYrY2EltnOu1RJifdXZYmvjs36AFZ8CE7n++O/tq5sa6EMx5A
	 a/j7R13cI4mnnqvDVaTuhUfp9P83AHnx8UQ2cbNrDfOv3NJztxD8JOTOg6WaibDHm+
	 Qt5YxZWXv5Ohx65HRpM5NW2pnQQAxVjzTzk/vtVkggyQVKVDMhQm1fpv3LK9BE8n9j
	 SoxXTVXeXu5VNyL1UJd5o+VwamhQ0wK5GLoAxKiOji3t+tv+ZsvcCXeDzgR1LNDNkH
	 IFshKJy0n9kg3veT+JMuEGFCBw5iLOQkGq6wSrA8q22lGcAF6kMln2Umz1c26O1uBu
	 QufzoXx9UnvqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6258CC433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980245438.30644.7641324218266492237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc62d35521780568a0ae6757417c970930c0a070970f5c1a71639abe20a0b744
Date: Wed, 30 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669802454
