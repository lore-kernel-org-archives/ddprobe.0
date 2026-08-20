Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30000345EDE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787196034; cv=none; b=u7ttbAXZgs7l83kal9ExsyqjazYBrQN5i2DtQazkQgAos57Rl8g+Bmosnk9XdjmzQfuvnuME04BjIn1qnxCRq0EL1t00KdE9DHMshHZELCqCG492NnXlqggv0QvmD5VGNrOKwjszZm8HMdnpq65DEy8c7XZy2Hvu12uP3GBTKyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787196034; c=relaxed/simple;
	bh=jzoSeF6qhBdhlWRS/j7Eul4f+EVkEIlb5bXSk5aZr90=;
	h=To:Subject:From:Message-Id:Date; b=CvhATFwjIDiNmlM7R0j6Bb27w26RZlEBtnPbG8GLhrSyxvDsKmzd+4ADF9wqdxDwE+khoYf1K2XnWaXeGNjHHOo4p2PXoizW8qCfXUIs6oWvFHVxCzCb/UzgdGYL0Qeqd8R0r8235ROsDknYKFXV600L5Y25MqKWKgM7EtUZLIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zdypr7+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zdypr7+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21C5C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787196033;
	bh=jzoSeF6qhBdhlWRS/j7Eul4f+EVkEIlb5bXSk5aZr90=;
	h=To:Subject:From:Date:From;
	b=Zdypr7+MV3DDPBlmnVfhk6spkFGCnx58wbbXNUq1h0EwJabaoY5ZWIsNN00nY2fQA
	 d5DJtKa74D49BpyKFe633QsaDSc/t2v3nj+F8Uf4WwxXJGQVwV7BVPX2Sn1EIf8eef
	 DGnVaAMlTtn6YYlma3Fk74LvXq69NE8aDOjQn/nEgVrZXKnZb4UW3rMDw+6FKKhdFe
	 729tj927JzbyDWX/KgWylznd6HBZdw/S5SmM/HFFBWVq8efF9gWwyvvHBKhHnT+uIf
	 XEgSE+tk9woMIsHLfKmS98/M6+qi5w2RjVPsSC8hsCYo0gMU5SfBmR1JkXtaUv2C+Q
	 We2zD+EBEKWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE2BC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719603374.13034.10453887550824736120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7876e7ad98537ab3cbaf3b7faa241da293f42e9479583513a561782271e2bf71
Date: Thu, 20 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787196033
