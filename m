Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F4E3D6B
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7+RnHIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A02C433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698767896;
	bh=VimM7hS+xaVsV89QzKvJa73UESGZPDhBfeg6duNTS+o=;
	h=To:Subject:From:Date:From;
	b=Z7+RnHIbN4Ojj9fwdFgFseseI6KwWIvgWfO8hEjkLY5nVEV9rWEHXFO6NKxmmw8kl
	 C3/HXNEfqBh1SluiWRvfBMTf6kDf5Y86233/nX06LQqTFrYCrcgWsvrhTmVR/U7QvR
	 Bey0sj++IfMJjgS716Cs6CowWw335LCrDXvJHdMnl09kchRVvY9p3FQmjiFse6QnYi
	 Ry1pBdT4OAQ+FIrCIu8isWw4CDW6CtS7s4PDLBESex/Yol9XBaYT/f4m8cVCeequFt
	 zb3D0MRMqfzXctptO4Yq8R6dhvwJcNxvHmAROIO29BcgLDjcvYZTio9BT5zlsbZARl
	 syZuFbEnvWqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6969DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169876789640.2725.9337476824623037062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77dfc1539a10f77c83f8ec56d774681ccd97575c59910f19820ca0b7c10d963a
Date: Tue, 31 Oct 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698767896
