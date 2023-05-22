Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B98A1640F
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 17:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0275C4339B
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 17:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684776185;
	bh=mE3pyLP8P/VCINUl9LdsN+asdYf3Owi37YEDITCQzM8=;
	h=To:Subject:From:Date:From;
	b=CjzrEGQ/wPN14g2y/iYUK7dREJqDJkVhQc+E7JdHRAwoVc8DlJ2GviEkLTsV37vA3
	 LBoihM9eitmzuVqPShtyvhEGJTX75vd6/+SgOGXRjAHixaLtSMVx2xDwimzJK/DsdK
	 6F1wmDfB4pgBswnaMaClOLY0HVBejbPpDF/Tn7+MN9Ms4iy8F1YJTTxZYUE+pJ3Z0B
	 pW7CJGWY/InxyRYjtAp2zfaVqmg7J8HCnZyno3pRqN94FcrQcTwnQUhjwtLQ1VGFi6
	 uny1nVs3EwsFeNI2DFJB/zTpPZWTNnG/hG92CEmB6HffifI6duyT9UfIDidrBQ0pOc
	 nXhCVYVAj/Gbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AD2C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 17:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168477618579.29474.11105461913405917002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99eba0040a298fe6f6e0c533fe355ae0fbd36c7a668055a8dfec9a5790b50a82
Date: Mon, 22 May 2023 17:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684776185
