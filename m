Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508796FD7
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D778DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682116145;
	bh=xL9Wrw60qAS9SR5+sQ2ARnrvOt/aLQtc9rmVhfT0U7A=;
	h=To:Subject:From:Date:From;
	b=DFKZFZE6RaHmpUOs5L8KFfoQY7pgrJBBNppeW3QDehqXWyGLhE2kZN43BVXncrLkC
	 LHxZ255EH7Un/7lmGMzTGIXIvvniadGCxbm6clC+TKoW0plP8VPcGLd4WJmdMv3xRO
	 ojJskEzf6uo0LWaYTkPW+aIhur0LFnuIuedKw5Pmo/nAnDVGEp79IIsWJ1wPt9gCle
	 NgsggPzF4b5bXNV5f6T96+SyVAAAyFccDlNTyGrClnzqedi0ViFKUSPEZPdvngh5KM
	 KT8vqO8U3u5WhKBR1DgvtwuM95opdArvzrPIoZiJnaQqEb6rgouEtf/AuXhF6tZ9YX
	 DF/MmNHoZ6G6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B4EC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 22:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168211614574.5810.6466328973025709580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1acc37959924b0676e1b84f418ac139e1ff8dad59fabeb1a17f43ae4ecabf8a3
Date: Fri, 21 Apr 2023 22:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682116145
