Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A44B15AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E3BC433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688090588;
	bh=oeRFRCRKCq6yZsBk+Gmbeo1bWUwC7ca31CsLo0rbMVw=;
	h=To:Subject:From:Date:From;
	b=HBq2nvf9BjTYgz/fAxoMXAahKgNzyudcX1g8As2++8dIHckelFUNHGxstsg/Cnonb
	 +yNpOwqOXR9Yan9RGJEjgszNtP1cu6FvT4WwC+kvsD6vNdeYTUMbMuOhWzg/I4aqMv
	 bE3eX8vjkL/RYVJA7hqhNRp9gi6NZg8Af/+oIBuL22YqzoQWlIsbKHguBRtQomQPfR
	 rjuCOArh30spkCW6FyNcDOZwnjvIAUS+WAK1Wm8gs0LFw01bp52bQ0sgBgXqESQuYV
	 JzJ2odoF81EdcoZVDYZr3+6GlGWPhNavNQQ+1LCX8AmWANyCGhhNN5S/gyT5mDEckl
	 Guh5zhZXUrzWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B898CEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809058874.11432.16469416230408508015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18687cc5b674697dd87723c902ca7911dda3545548839365692276788bfa0660
Date: Fri, 30 Jun 2023 02:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688090588
