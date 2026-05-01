Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262E82BE048
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777635454; cv=none; b=cjVrinGXvn30SUOg8OVMdiW+3IuI4Z+M6jNsEdkOZ7IXNjmecm5VYzFwOhdk7GSP2SY53J4pwylDFkDnQwYRuI+P5rRCA3xQ+DaCcv+IqvUuwVkf0JRzCDZXS5EKub5+JB0/mVBZgRhWa28RDPZwIe94Lcsnivri4jfNL0RxIi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777635454; c=relaxed/simple;
	bh=cW2bTZw+KhKCaJeVmCaKmqEIeZrNo4MwiSrTb5k3ATc=;
	h=To:Subject:From:Message-Id:Date; b=FKPqVp7pR+45Z0UhgupCMIpPJF6LX9o18y2WTBr8cj4LBYCQ9zXMAKp+mJCpKkaGZuTKDGydSVYpQz5ijGC7B+ocDhyRQ245cS2nXRZqPerbv3TAVdgm0REa+Rq9SGn3XA9b3KLaWnPCQuGw+HOBM2dcEXkT8Paeq8O9Vrh3Mj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXeFPBFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXeFPBFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA977C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777635453;
	bh=cW2bTZw+KhKCaJeVmCaKmqEIeZrNo4MwiSrTb5k3ATc=;
	h=To:Subject:From:Date:From;
	b=YXeFPBFq9qbHIJ/JXI66ExPtxWrqB8SoQ4bg2fnEp1roB0dJZ1M0jctuhttZfmFsQ
	 z+YysQl9yc6td8rxHaI5CX5iHTPRv0GR02mPDTsrPS7VxnTebX27fN1SfEZ6v5WGeF
	 OCRW8Rh3TbWYfss0f6oKvHocTuFaACa8uVwVYJ2DWLmAK64ggjMl8nw7c1OEdoC6aa
	 Tmu3BfXzQxNLB0su4p+ZhXeP4ZUvcfY2f4AhFC9pp5lCPr4QlKtukL0GwiCFYs0Hn3
	 +VKwSc7nkb34dhy4zbMeny77Hlu01+ivzCWmOeZsbAvCzr+QcIl7vwD0zQRm/loz69
	 TkjTOVNgEqwcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACABCCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763545368.8555.2331247150712262550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7754a2a5f92cb739f575000ba213d810bd156184daa34395e92f6b323355e80
Date: Fri, 01 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777635453
