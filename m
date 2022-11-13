Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84D9A2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4E4C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668303654;
	bh=ZcmlDDFtoJ0pcg8fbyi2E0vqNHc9GtH5BUJtHwsytK4=;
	h=To:Subject:From:Date:From;
	b=mbtNgG8xu/c/Fs1IuPwj81Sc3QzEcNMv00zHjUglnBgt3ebqkSyviV7FjlL/snUa/
	 rc02GL9qXTM7tpd3Gwne9dsTBFD5/HbA2DJuFzg5TrHlX3KhG0f//XeeBRmzKQe3aU
	 pexgqUPqwqcZXis7BbHM3R6AeH94tWnJbV1FOnxIVNkayIxOV25H1KVGggC/mfAKjS
	 C89bcsBZkOQsYl/lNug7VJz4VWyqKOU9A18iUAzoLtDc05kwK7Me+jxQXJDeGnzcfM
	 2479bmHXF3c+a9N4NHQ8vP3VD/CD7MjFG+s0TjiuBgxFyoBOwjzlSzHqfqRtuQSMOd
	 x5oayOxNBlSMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60709C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830365436.7097.5595679611249278542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f445de2c5d38b95fda45ee7a3036af5323129309b3d90348eb1733ad5d6a94a
Date: Sun, 13 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668303654
