Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E0B1879
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714157543; cv=none; b=MtxHaTkR4ZBlKbOLO6Gb9iZjLmn2tfbI6j4VocRNFEQmlF+A+VgO/+pNAn9bOje1EY0E2kvIqAaKGvbFePv+hdteThEEKFqFOlu9hAoFvZYt5oX7n5rqV+1DZ0K6z6jaGKccJ4EtqiBe9E4qEB7dmoEp4OTjDIgh6NNiR7kA0PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714157543; c=relaxed/simple;
	bh=0hwWPqsZoMtamWcLLHbYX8qNA6hl0+HfrUuGQlP8r40=;
	h=To:Subject:From:Message-Id:Date; b=WNxciwGz/uQbPUPdmX7fXg/S6nj8hTlZBmvvkwVgJpCAk9CGa0vIOG6thLWGpgS6og6UukZcgOEssPKml9d+F0x9lvcc71oC3zHImeR6gNZ3+soTrhyGhTGEA5RNtb3cj86wiAJOP3hMKMX+uoUo75fMhKjFkIFeK1Eh9MQn7yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va08FuaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va08FuaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E61C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714157542;
	bh=0hwWPqsZoMtamWcLLHbYX8qNA6hl0+HfrUuGQlP8r40=;
	h=To:Subject:From:Date:From;
	b=Va08FuaQWV/qrnZPluPY2abE+wo7l3E8idg+X2/4w/dnxMlaZ03RGIThjt/JuJIgn
	 +tf99bIZ2+bhntr0BxNB2bpMUIBx9Dr4W8CyHBFW3dpH6e7Uev3nylMCjziTYce6Pn
	 uozGjSzYfGotx+UhyFn0TLumkK2xoPgkn7m/RmiIOQ2cDsJma3l7DtxU3iu0cQtyix
	 0p8QWLy1UhsHlayoUYo1CgDJYJJQNffx05TbRjbS2LviX/fgBifz3NIAE86okVUw1k
	 di/NXaUOnsk+nRhEPTBJ4Uk10VZkXgl2r90Z7Z5y1Ho5CDgGYDluFX/ywD6KGlXP0Z
	 EMKm/nfeBVYSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20E7C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171415754278.28621.17450334097694011357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5c7d0235ecd189a448ed8c20dccdce84d6c96242214521576ae9e958695c04
Date: Fri, 26 Apr 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714157542
