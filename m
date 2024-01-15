Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0923115BB
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcFWXV6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA46C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705288696;
	bh=zOOyXP4OXel1mLOxuhbSR2JtXkmsU+y2F/3VxMmmFco=;
	h=To:Subject:From:Date:From;
	b=jcFWXV6fKJLuPRIE/ManwNYSi4F717PxbJ41yFg+19YsBlAIv2G/MbQmk1a1hdEVd
	 EGlxSoV9vn61guGv0bV783pm13FLJ+/Vny+V1x0pRT8QKuKSt7s60wHTXvHsaQ5Hij
	 QHiFFhTyi6WWS2M+RJo7Rrti18MYSxbVUcvB1mBy7MMoSTkh+d2iPYpUXDY06FZ+oe
	 OedCKGvcwXBCkVF1c2aFcnZ8wpDvkKwgqViEC51lJqdCrpzF1S97sURvhc2z6TH3jT
	 akIICQWBp3s+Mzb2N/azHDly5uY0uIWcpnc8ngtxxpaTSu94Vn549VqxaRhMhafcXj
	 n0YLCaJISKrQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600F2C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170528869636.3256.13260389387630178031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098efa1544f8f989d781d9159b9b6fdb4a5c3e953f1214970219ea03c12a8763
Date: Mon, 15 Jan 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705288696
