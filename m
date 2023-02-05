Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D07E7B
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 16:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5849C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 16:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675614365;
	bh=3XyK+zVt/1RlBPfOKivr+6Chu4Frb8WJlaVomsVbqpc=;
	h=To:Subject:From:Date:From;
	b=hPNYEVYsfCXCROKBAWi3fr1Jjwbzkc406Wd5IoOMi/qb6fIAv1Bhn6qOz3+5u+PEF
	 dZl7ZZmpiOBAIMoxNyUsUE4f0ZaJcQL+/P0Aih/xHrG0C+tBKTsc1JTyCKRDd0RaSX
	 Eu2XgdPcV80Nm5bMwgrbZMNAcmhUsY9NMAO0xaN9K5laSzUqD4aaHEPpSnpcKQuLh+
	 mDq7X1EYj14rrnwrfZsljraLd4mmuCvuI48d8f6ZtiSLLr/fkZRTNwdNNfwxVMCEfl
	 2IyS4abMaiX8lJxRxtFeoJJA5byOdQ1/R2mwJd5nF7tVkdf5WV4MAu7tIoKkk1hRrn
	 KN2dsFD9pf8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B5FC636CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 16:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167561436574.14840.13782762927330302661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af44db6f42efe9e400b0e5074090c2d0d6be49064912496bba335d0d913de877
Date: Sun, 05 Feb 2023 16:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675614365
