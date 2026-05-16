Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3380D13B293
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778900434; cv=none; b=uvCNJHa3MBBEL6/XB37LgZL4OW0H1iZOxW8z5MUp6DQocbzoTswxKQdMAqrau2c1Zg9UM2ez6rtjgSm0a0Gyn6nRKDQob2ConLk5FBzuNPARX4r/5dOrf27uOkwZCIYU1AQLJ61ivAODm+OJRxv4o9Ilqs9MuR5UQsUgpJm6EoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778900434; c=relaxed/simple;
	bh=fJd+2ennMfIWL4d8zB3qAiTL7x538iR9GKaSGoFuvBU=;
	h=To:Subject:From:Message-Id:Date; b=GCiYypbro96igEvR/Lf5Ig1/8Y5YRVUrXluD3JNBf44y0+GVmBXWTotqUl0dhlXR6FXZ2iCCIWcZ8mrXY22a899D8SzWRCrIA+4kpn2Uvxz/F2Z6/EAsw4u+1p8FEVNsg5ZIVUISwtHv/j7pMufXizmRPBoLW5tEM75uWxSibUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2i8ydsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2i8ydsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69AAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778900433;
	bh=fJd+2ennMfIWL4d8zB3qAiTL7x538iR9GKaSGoFuvBU=;
	h=To:Subject:From:Date:From;
	b=H2i8ydsmpGF9pQCPYANjA0GayqsXbDacnxDaiNL9XghAgWqrB6EXyUADz5LiQSRe6
	 OEKwEkyqlcS9kyXCZ8IAuFiTn7NkaMU+nlmSoOgus8HF/U5jGy+FrkxyI8fnOIbn/2
	 gfRd6oQi7sf4mZL07b6uW4edsICINW9h0tXd3Cz2L+lw7+5hRIL9+xw4mmI0VIkMon
	 O1Y8JkJff9LkVGR0s7+7ZXZ6wQiJID6FnQTNyhst0S+xnzrpLUE6pO7pnS7TZVwf/i
	 kyPMdyZ4yDO2fYAJ/7j9eJcpVggQznpxxLy25ZNdo3fvw+BdwGMHoGha/n/IggmkpW
	 IL+B9kZnt530Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3722CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890043370.23697.8893426784001111512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86597a51f12e0792629b4a902ee771e6856754c338b35800912ca22d260bd5e3
Date: Sat, 16 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778900433
