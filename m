Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B76191
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF4CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672541487;
	bh=Ppl+kQF1JjzqtMfmLSN0UE3cSHTdojQQBElDMur7Ni8=;
	h=To:Subject:From:Date:From;
	b=f2wb4J6CUcTuhdTwf2gueYvnEi4Eh6AXJCWu+Lkk/2H8Y7xTr8Dd6WzojiBGlaT1q
	 0WbLUBR5+g5nRIwz+9jYrmysn1y2Jjhm8TE2d3hCPemMmbopv2NsFiwnmHFXlxqWF2
	 ms+XxdJxTTLWSFew7eWmKAlOu96f+hEtYZPbd+TbqCBR+u1qteLr2bYS5cHxcmDxTq
	 LqEVEt+2Imk4zm/sPS8FoJyVBpPGNNDAp1vMFEKe4AWRwFRJ1WSkhgsq39NcNwd+v8
	 cwDRLGykR+AXwBqCMw81b3X2VgxC+GOV7OG4yZ407z38PX8PryFSJrLQMMvTQ+QA9C
	 LSU6/n2iKMlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612EDC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254148737.16539.5282452700395478326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ae59efbec9ba78325e513939d4458c394540369542fbf75bedd5c602f0e11b
Date: Sun, 01 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672541487
