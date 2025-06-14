Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352851C28E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749875994; cv=none; b=EPkjN9/ljtwehadvF9DKo6EtzhhuV1tcPJR9E9n1dRE85gD25umL2yQRBXmVapyW5cdUFcVNCBhaC4ONcu3UsrI8A9uimjTfA0hFe9PkPMlDnPJqsoQeDGE0xdwQlXyF7vlT7brQjbVOn4GNR+G50Vyp1aU/cqKNAgTarrh5rvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749875994; c=relaxed/simple;
	bh=jaqHyUnM0OeyOgB+0gy1wQQOrcEm2jwH4KRmEBwndIY=;
	h=To:Subject:From:Message-Id:Date; b=b359id7F3GUvyC2zkIZRZWNqHrdRuK8LB/uzZrN8RM4A+7pROwovfTvqen7AV5She0KIJuZPrGhDL2JsrDyQ4ILBgkP+zCz0MqdtCKPv1BDiNFr0/hrEgGwbvWUGYB+QZV91yOZlrfvjwvkdeZesE+P8xq2uvJILPZQ/hTjdcmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekqZs2gU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekqZs2gU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A4AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749875993;
	bh=jaqHyUnM0OeyOgB+0gy1wQQOrcEm2jwH4KRmEBwndIY=;
	h=To:Subject:From:Date:From;
	b=ekqZs2gUzjDXYtW8YGKFEF13jAsnbYc/6NK8OeyGPOmwvzdscVCXPm6bkU+5Ffu2H
	 Rvmc45bzXD0nWlaOTHvWIRudAKiudx7tTbytz2+j9D9YV58Q8fd3H/WzgGYNyuk68H
	 Fn0YpGgMGE0J+wUj4nyVDo4JRR79GgPNqcgo4Fm4PYCL1LWV4Kh+OmrLTj0eHREVFR
	 yx9uWy15yp3bbu5jvCKiDSc+bzht6uTB/fW46x52pR5+ofrHlYwKS1tMddP2coUTMr
	 UP8uTPD0advgLdqd0HlRABlppxdIZNE57aJEo4BzyU2V1dJhIR8JNM/jD9D0HWTuO/
	 jiKOG8Sr3CZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE56C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987599357.10932.9369482252253460813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715049b42acac143eba88e9ecd4003789541fafee0f3ab80995c5633a04ab590
Date: Sat, 14 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749875993
