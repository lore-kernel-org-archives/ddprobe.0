Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87E915B4
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D17BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670927487;
	bh=K6cF7aNCySwVgbuv09/VFE/Fn0oxIGhSiWEdVhFPUUk=;
	h=To:Subject:From:Date:From;
	b=PXWTNKheKyXPU/ShuFojF88Ttt/GsAZWx/GmBcN3Gx/cZzCo1R1Ec6yvdNh+s6hg3
	 wJxLyZyDozEI90706/QopgjmB8KGvjROjy6UWjPJrwl7qdQti1vHQw/I4OGHkgCy1K
	 fhOiX8GSMADcElDM+hcdCbzxU0W6DqBjt5ULJzTGanxf4l2SdeOA5KzyeNDtGDDEH5
	 QY2ekTkhY9k/RKHImy2ODtOJ4QiK3do5waYGghPR3R4C3PeO7zKx8Vd2RcCzB/xtLk
	 5PN+qzbVIFQD0NdqNe2AumkQaQi4mw5X1N15GOIhenxnu2DKmcjnOrvMOJL3cZfFRe
	 FHZBRNB7CvS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF47C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092748744.5432.10124334541339967159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305b403082d80487fc7c422f8f2ce16df55930fa4a28a99efe785c559d2421fe
Date: Tue, 13 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670927487
