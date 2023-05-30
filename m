Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C2080D
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1154C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685410325;
	bh=rOPyA16IEdEc0Q+fk8/VKJ8YQb/KOevWWVrej7Sws1g=;
	h=To:Subject:From:Date:From;
	b=lOSSRb22cifIodROt75E7wcCrrQmaUqiV71hY1vSx2hLGjuD1pv6h557DzMe77UVW
	 jeh8TOAHIhYa5B2TEYzwzDuMaa1pVp940lrztugheqGdQ+LlRptm8pGwcvT58zOyjA
	 5Q5j6U+By7rrGm3xd79659HICuRQLSqc3yUcfGd0LQsnQ9CDBynfwPS/FJyL9eUXzm
	 kj6FGqTXcv+dTGZo9ZxA9MitPSQMiMccMFX3O7Q21+wz4tDpOrPM7qFIj7jBMnrzM2
	 tbue+LGxLlucTTtXRzzNv/C/qYZx9jzZbMycoD6l0Yd/A07p3XY2CpiQWOadFX7gqB
	 pGQKdrGPQ/Qbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FCBC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168541032576.10836.11289275698632874692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea1b554f55074ff6a52b6647cbb0c424e62cbf3427935f6fc35989a22fadd46
Date: Tue, 30 May 2023 01:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685410325
