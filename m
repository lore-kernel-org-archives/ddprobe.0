Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385D12F23
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6280C4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678883405;
	bh=CmDJu9eYRkA+eedjwYX2BLx2LWypIaExsPcZVAmJNNs=;
	h=To:Subject:From:Date:From;
	b=IVD9rINJ7iWvizOtL68RTdMPqYSg94h/WZo/L5+jtHTJaSPzys4zdOjVjCyNBLyO9
	 CY7qXElYsI4DIW1tG53nsxiOlT8FIaa3hDZq+RaZKcUAcm1pDVlyLETCVPv0IE/Z7u
	 19Evm7zzQ7FL5iTes/J51Fq3vbjE8npdIuW5Hqru5d1n3GV08W7yLiMPvUF8rHK587
	 DaGz9kXFTSfmfVc6va6PpduI3OrLUY2to+U+iTOGYrmjcGBewNAo1ON3yhjz8sGcKr
	 dH4HbT288B3Y/OonAiw3HwWb5ah4017z1BZHubHe/9ME91W7NQAjnQ3O1HmvtSYHHU
	 MRMI3VXBLrTQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C20C6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167888340580.27923.5462439294079609690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0ad7c4fe245502f2359742886044cfdb5f388293a1587889dd3cae639593bc
Date: Wed, 15 Mar 2023 12:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678883405
