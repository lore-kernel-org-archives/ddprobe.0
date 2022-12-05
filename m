Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AEF17CE
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8144FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670219454;
	bh=I6HvNW/FNlxD47Bga++ABTy6DyBLz0J2IuY2neD0cM0=;
	h=To:Subject:From:Date:From;
	b=ICni5l77ueIdNqMhiy5Q3QR1rp/wFgeuMUh6Knxb1KIF6BZD2bOZ2gpMoiz22dHcb
	 oTl0YGo5PkBQKMB1qc+nDXiOFjeETTez/ku6z8+pFoc5e2l39XOnEc1E5zopaKRyLI
	 BMMXQNJkeVrbD0eBa6TLmKO8ljCVdfibnAs2o3UJUo83c3+A9Fm0goQ9R3UPPr/Xjq
	 MKyhYTIligrg6ELa/IhmfTTIxcNBYg97b7ekKTvYt2ZyhfVcwYDDgkT2eHe1cyXugU
	 Ux8/VA+49Z/FipAPW3FooMFzJIYIaYq5cB6m1rBd+mjSavBWsUIaA5y8Fz3RIFznmj
	 YrMtv7vBlm2Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D5AC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167021945440.31913.3789085655043701630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9a2878270c6177391d21eb7d7e7e0d60edbac197312f9c7358b0b782fc30c3
Date: Mon, 05 Dec 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670219454
