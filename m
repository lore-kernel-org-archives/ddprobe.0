Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C7B1857
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B081C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670754087;
	bh=mdsScvucF0MYehr62mkYNaT0aOzHE5Hs0853Xrmg4io=;
	h=To:Subject:From:Date:From;
	b=cRABbYzUbNS3LnSdYWTGCl07JTyB73J5oZy9r06cXfdhrzCFImICjJfI7/AsV0U27
	 Y40TenHwlAHaMHz1Ks5NtHhQSQZKgF4/bY3eKRcH7XvADkeChSGICI8n88lGPB0OMp
	 ytJIzno78mucXEGlYOJMD/osy8h5VLA39PYzeHDfAZbUiJzC3xmzoR71SxfuZl98Zi
	 v/64uYBiLAbJWg+k/eUP5mQKw5HJPqgiKReGZvT/A1kD2PRfl0GUQCGnCyeketsVGk
	 JGinTnrLTTBPG1Nvo3kETpgF6fUVfeTevsYV4/rCIssGwoJEa78EhusW6QXbjOyxmp
	 +P4mbRFPFIPzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612AAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075408739.11830.12517143054517654737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3d8ed4f864d3b7403a11d074073799597223e326649892ffe97e50142381df
Date: Sun, 11 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670754087
