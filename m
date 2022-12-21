Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99BC15A6
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6D0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671613287;
	bh=TThRxY44FxCv19ysdnKhAXkWPOIJ0jfgtC52lvWQc+A=;
	h=To:Subject:From:Date:From;
	b=S3zp5VtVhpcOIRVHXIs/HnAvFEzDRF/T1F05weDMfj0FtRU54cau1G/HVZx7AODcr
	 p6zG9hZ2iSkbzruqoWMcxJjmPNaeVyYGhvACwXS5qrFe28JmJQyPEfekmB7ALCQG51
	 ds9LUlt973/mrFUZJr4yJQNwG0e4RtxU8w62FNbvOtG6Pq/yTTBxZEv7A5guJi6W5W
	 mhBrIXF05KvzJZb8Tk7LXMMCyRgrilrgWcogJrxuTNsls4+tc97H1zlLm8gsnz9GAP
	 ho4loSnTgyk2LGqDgh9+NJqQkwdGmHlT/FpjmecZ9drOyol/1v4O3nm+oXGneW1FCo
	 //55b+XwGI1uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61665C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161328739.3021.2712194856926605827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5f6921bbe7e8a3946b86cf51247760189b0a11ebfd9c1d10f1b3abc0c8161f
Date: Wed, 21 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671613287
