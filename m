Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E79A48
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2C9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671279687;
	bh=Ji61QHBDorC5WKae3Tj6Uf2Vtibp+/2wLBXo1xJrQAs=;
	h=To:Subject:From:Date:From;
	b=HVb5vstsbMzApaq/v8hdnhX+2LlNZtvqllphwCqOWCU+ZeIqWl66NUWvpwvWed9Yv
	 jhjMKHflgfWxFHiScdrqtW+jH0tAUVYMiVvWairmPnIA5W7TbpDRhwTW4TSorpUyya
	 i1t/EuhMoF9qqq5eWO4MdCoweVBKAg4xteNOL0VnTFLZFkQ7gT9kH4jEmPxjEZg0CK
	 6+erTBX+t7+y60dTIIpv1KIdxzJKWl9Ng0GLGrzCx5UM+Od9L8El5vh9UC23Fre09T
	 mw4INfdS9gCl05zoMLZ83BgYwgH933C49bDfBZ5Xx+kx6WAJQw9Yjxie2HQD1W85MK
	 vlYP1NWAzaZAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E4E3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127968745.23474.3721335911867645927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f134d2e8a30e7430086e5e90afb3baa8d7c53d20d23e23ab8180a3bda582c6
Date: Sat, 17 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671279687
