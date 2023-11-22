Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A464C1842
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Li8XfTFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78FFFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700654896;
	bh=C6EoRa43maiQqGYuKgTUkpFrZBvpajQ7O9BCcNKMJdg=;
	h=To:Subject:From:Date:From;
	b=Li8XfTFUUFEYh86yzOB8u/dWuiR7NMmwK3jX7y7qsPUK6dAPFGtWFYOcLKgVSNi4c
	 ZOogOMy4+XQ7PAAy9sEj8pt14pSRFUrZvpBJXOQmMR7HF6iYqmNRiD378kYQ1WVhnM
	 bFzQDUnbfDDcoAFFyzMHjk4Bcn/FY2FYK3qZct8s5FF882rEHYVLoJbFtVPHp6/AE2
	 nCC/Sw/XBHjhSEV1L+zSURcJUpbD7WQX5Wp9IAmVDPIRU4LskRhEtViLOFwWrWdPXG
	 eoUx3OxXpPxroK0789KN7/u3v5ECnfWZ0Cn9BWg2vKvT76TYWFYaf8QqX1aAWHegYK
	 2VzDeraTshitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD1DC61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170065489638.24807.9905909130788774196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1777d9cdb32f012daaf55d3a6e33873004170fa7e02e28fcecf64d704554bbdf
Date: Wed, 22 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700654896
