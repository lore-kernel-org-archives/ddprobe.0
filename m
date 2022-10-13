Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2AED20F9
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C3FC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665678653;
	bh=yC2FXFVWqNlXSSn21YOkA9aRlSxZc/B7vtCkJkGSu6g=;
	h=To:Subject:From:Date:From;
	b=sXrOtSDJnXFFTYMTjg+hYLPV9hwZXZT4WBnYpEvnTzLTarTRqK/x9fIcTaTCgsLt5
	 v4aZEWKrsv9m2+vBsw5mk4ZZpDvLunQAcwpP7B0MzM9+iAWhkGnHrF9w120//PeQ3T
	 j1qNTPCTuuHqF8/hzRqWGRzczJOI4moi0g4ztMq63Al0OPDp2g6kaTDkDcUkURRNda
	 VCNofFVqz/zF8fiNDoKmBB37f+VuBTusoquorn7MQRKijkBxXBNSHBzUwOkgj5mEFm
	 80bX1wukYjyimE9m4Pr8zrzDPdvvhSDl4vYQ8bphhm3g+zfFrACyaRD/CWG67mqiYR
	 skknYrsQlOzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F72C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567865332.32408.6710721904214364095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7983f1a7bf767fee56d65a3e51eb0d113b1453824b9397154479190a0663b993
Date: Thu, 13 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665678653
