Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A22179BF
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BStuJ8HT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 945E4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699717096;
	bh=G1Hf24IBbmvEd3+P4xpNlxiC1pZHKn4f4zJpVMYsGEE=;
	h=To:Subject:From:Date:From;
	b=BStuJ8HTGYHk7L3DvMSeHB4OICw/IcSPBoPamoZFZYISRSCXdZwQmm5LTcINWyn2m
	 NQb/6Lcb/qgnLzXRjaFdVCa5Ai4a6HH7gWhlog5IOJJv6p/ISdRgyalI1/6XhNn+GM
	 j1WpAlASU+GKzKkG0wx08THNhUhg3QF/R4somU1bpkyNPwbKEyl/n7OY34d+ES0D3Q
	 rLoUQFQMWoKhndSG5p3QSV/QnxtPS8n+1eyCxt2MFw5rA2iCRvZ4wIMeppvTycNngd
	 yutHpz6xCVi0aXvPRJNY3FFhRIEGi96ueU7WuhuaYwSvBaKEWE06Pf4H+WBRcqsNyx
	 Fr4jHsm+RHU5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76806C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169971709644.26060.7607486117491575226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f04e88a890b3c456e413b3666ac409c910b0175ee736cede65768f89f083f1
Date: Sat, 11 Nov 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699717096
