Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC4A36B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14BCC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687738988;
	bh=gJ92wJBWYskH6MSQfoaJzAenD04LlQ6+6NoyqPGLXKw=;
	h=To:Subject:From:Date:From;
	b=uBl+AtzMLX9SiMJCF42ZefU1ukvXCZFFU17N6pVRzZ9tSO8T84b4D3SJrweVX+CDn
	 3aI2Mu8lB2JBhBmsPLyLadzf6za/4R9Y13XVFtE8U8xcbub7weZvHuplaRXx158u5g
	 Q1i7VSuFYcQuGIgUvBnxCd/ypLIZXVmmhNyQaFOfCnbYFQiInVRketvf+ut5NNs5rU
	 01dMIgrJVOzal+v45vQT0muQOzuV1YbheiTXJYyZrkBqzvdLDqHBXOJSwqC9arI9EN
	 HuUfWjQAx1VO2fApF2iCxMTOySoDKvHqX1V1XtpwZNaNPi+XxhK1oiU6USsZuUsDQs
	 jBKdvmhjG1EVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18F7EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773898868.9110.5415265507422711645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9110a23dc991225e7c6038d0bae8bc1fb51dda59c9ae17c2e5e0312952e4e7d4
Date: Mon, 26 Jun 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687738988
