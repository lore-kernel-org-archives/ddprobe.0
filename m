Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C262E7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4C3C433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666562453;
	bh=XVmcJFE0RBSXJokNq3two4k09BSVjLHCm6cDKLSNo3M=;
	h=To:Subject:From:Date:From;
	b=OWgYOF8XLZto/G8dbxja+EMCddHe9Mw7S5SfJkqZoRj7a45THElTYYa+8TVYlffZZ
	 N5hBp72HMcG1NJk2MQZA7jIY5j+ANUEJ/m7Prh8BZuwdLAte876mfyt3JmJanM2j3q
	 NFmeTJf6mHQKnTQ5bPlhGIa/OQXV01GSPUhbzKo3qDJRWiBGWjVuLTh+AqVyBX7kcS
	 E2ZYuyynYbkgdBkkZTCsOEiQnszWq17UKNzUuyZCU7pOHq/uAbrthZ20y1HbdPhGrm
	 Am29dU/lmz98nFA9FITh8MNGx6TPCOGvcZgbeVASdiOyx+QtXafeQpRlABslGg48hn
	 +FF7oL91lh6tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DA6C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166656245333.31346.9852001262498882057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31661cbc1746a9f2d3515798cb4d7a0f53a0863f9f9035f8e55f73ea1ded1eed
Date: Sun, 23 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666562453
