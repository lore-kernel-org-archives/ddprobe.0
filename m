Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8694E848C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FB8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689464468;
	bh=C4/aO/t6vBSjaummS6NPVP4iw69+jtqsJqytXqWoYr0=;
	h=To:Subject:From:Date:From;
	b=fT+n5rs0wYt5eULjCCJU3hYAaDxE0Ywn0UDXY3w0ZCsvg1vTjKv9BzKn98C3wXuVt
	 UgBicI6mogE7voaGBtxIMVirifsAJcKFul2CYk/TH/qZxj3Gzi+kWOmLPRwGgpJ/kC
	 yIUFNC7Tozm/7CKBssiIQavkbY0XqZQR2Qr9Nj0vlRt9M1Fo1lgMtLFV8ZFibddXkt
	 feFk2oIjvX3OdfaY1UBUIc+XxY521gvyZ4QPbXerA2vT4gTgeJAXu3zeE0a4GbiZuR
	 WDYJ10xEA7q6O5OM87dkCYZCGh0TONTDbR+1IxzznEYjZsvyvNQkh/+dz6qDMyGcgC
	 FTdKepsBR239w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B739FC0015E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168946446869.31965.11955758346361922142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0635de2dd4d703d08a3fab0f628254637dfa19bcb6a418a862c95beb66e8d4e
Date: Sat, 15 Jul 2023 23:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689464468
