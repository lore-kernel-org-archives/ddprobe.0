Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1B344AB7B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784671714; cv=none; b=nqQdS2kNG/xZQ5txVjM9kMQ5ZQY0m+G7iV1hmSMKkugxxU+dBcilCKVj+QW3f3jUNGpkNr90ousBeUbO6jCPNIYe7+439EAa4vqmEmxL6JsaFikSio6YPbTBeMNzFlUwnLG5FT5uoGaOtAZSYTHK4N+8iA5A0kmHl1VyUxyiSd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784671714; c=relaxed/simple;
	bh=+FbL6TQ4KUBxTf/mNlp9l4ejC2V8zJ1VM+Hg2sh/y/4=;
	h=To:Subject:From:Message-Id:Date; b=lEcO9Nj16fpe9yMwGiFmHrr6BcAm88bDbsykGVTIdNnZX0SYxmiu3jPqnHB0V8nnJKeZqBn72SVHu++KtVsgoPZsKyZVUmg/q3JjNjlBqcBrkuyT6CBbRxotzU+zorUeEu39z2JdxyzoMFjjbXm3Ke7z6+xzu/S/ZAOT9Kog2p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5f6gr3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5f6gr3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE25C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784671713;
	bh=+FbL6TQ4KUBxTf/mNlp9l4ejC2V8zJ1VM+Hg2sh/y/4=;
	h=To:Subject:From:Date:From;
	b=V5f6gr3gEJkbcHzrTjX3e59kfP9tzDlsF8Op2JbkjberjtV/SSdyMNMlbZKMC/ZuV
	 cTIlSYldJeMhvmeTg8XsTzyj4NBvtp0zxuSdyy2iDCNOgUlU+lRXEdvW5xFZP2LrRU
	 LSVyxEEzFtJewCygq6PoyXYz4E+ubCsFLhfsH2BeA/hr48XCUMQA/wuj5PA66CLSfL
	 scBeBLts4dzlh1KzUehFBE0ZNdaUE3rECZBoEnQfEAC8eVG/HzFxyoJNuQbT1c3vPv
	 GgTjh29F67KFjtPskAmQFRGqpn6K+yX28pIa0t4W2x1NMx8YSYaccyKO0klJw+lk9i
	 2YsuJA1tuU0Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB8C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467171368.29549.447834134503510711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e0647d07c6cd90b4abc384880c8803b08f86cbbd332a080a19176df18c5ee7
Date: Tue, 21 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784671713
