Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6784D2DEA68
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781942794; cv=none; b=pA9cWoKZKQzB1rqLwPaIhnal0bu98GxIIjOUGU7hiyt8mqWJMf5aExi+TZIUJ7x8MP2vkuc5uaxsjKy6wBXtsqZFUO/UUyVsWRgwIvUJoMSucrO2E+hgpKhwFRbjMFY2LwAcBj6kk5PcMSvPn9wNvdKZbjoZLtjcfiejL3ZAOj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781942794; c=relaxed/simple;
	bh=ms6yR/bC78C7SgCCfAHP+GroqPjHB+KngIw1oqLbuek=;
	h=To:Subject:From:Message-Id:Date; b=eEQdgfreM8ThKTJwjbYLsnFT2osDQ6z1NE5QDjUGINZ1GwgnjuOvwQkie6Oc0zMIeP4Qea27HhHbNHYIxl5EUu/bZrbG+cinnQ+nPYzLq1i614Kox60zM9rmxpPpU+VMcAMy4ldIb6U06jQ4PCsF08ztt/JH7CXXqp3CYmi3J94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2YvOQYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2YvOQYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FEAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781942793;
	bh=ms6yR/bC78C7SgCCfAHP+GroqPjHB+KngIw1oqLbuek=;
	h=To:Subject:From:Date:From;
	b=F2YvOQYHhb9qZE1vb+vD0x0hnq/gLiFUNrROUwXepEAbIB/GWS8RIIAHWQiJm1DWD
	 XhQgkijPg6BnJUejXlXGe2ABzXGH3qCVhXBpBrD7b83cO3+im8OZEwZCZ6QX5kXiR+
	 QVWA7gE8+Gk1SInNkhAbvCAMRlwsSeB/r02c6H132880WnHYzaVSjzPGfjEJyBR85R
	 6i5QmoqJQiY88MfVrUip47nAagskfasdalkihtXMYClDPIFHecSwuKhAUwo1qPRqpx
	 rCWEqvFHe/QRlvv4o85VkDznpH+i8NgiSalN1G6EjvYzOJ9Zh/2zUC1ABf6QrJ3ytk
	 4u+LxxmbA3kEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC2FCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194279372.25171.1682720905303042554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5cd502a1239cbad0d8c7d6c8e64af3bedd484267804afc690237803a5f8ba50
Date: Sat, 20 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781942793
