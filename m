Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF1E20EE
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 07:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB701C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 07:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678173545;
	bh=a+8umE6Vp3+xu+2/GWNIcT9/B/p8UVLFtt2Hm2mB+08=;
	h=To:Subject:From:Date:From;
	b=KL3XesrjydvXoNqTGdamjk3ZB26Ms4C7SxvOy46HEEMBdMphemO/MoxafQVIQoLhQ
	 fI1sX/vWLyv0mO56kePVC1NyoNmcwlss/gdHptVLx0WUCpS5KZ9mCmKXghHobLCXKx
	 BE8nJ+ENFX8x1BTE2VMIyJLbxHcP8LZJ+R6vZIBtT/raHA3PTBesIofZ61y4XlH0uN
	 Tad0reHjcURXsni3k9ScdsS9VoKPDq9EkZOXl7OdaObPBseGIsrNYNb+kBPF+2fZeG
	 fdJWzD9m2zFsrbjvTIjMht+xyxpa/41VWrvO231QXMPiGCWdnjSGvd0jMQRWk9RC5d
	 XcysN4cI4pIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE5AC678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 07:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167817354576.9221.1985394051670833197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219c520d71b49069a2ae978b04de7f172496d56838af3c618d6022d23ab397af
Date: Tue, 07 Mar 2023 07:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678173545
