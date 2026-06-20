Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567D323909C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781985394; cv=none; b=Voxhuo0mxlJ6lGJQr+jPMwD641JdK9CVVUtRdJaXAupjCFRZ6GAM4hK3ozxVhkQem0vEKvF8cVfVdWEdurr+kbtYfO7BXyA/muCsFG971g/0gK4APk63Xmi9Ap0JO31ex7BMm5nO4AYhbJ/S0IaK4NxSObKVdv6hrFyVJ5trDao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781985394; c=relaxed/simple;
	bh=kjkD4wQVc1xz5w6PFFZPGThjvy7wT89tBO/DXqNcEm0=;
	h=To:Subject:From:Message-Id:Date; b=OS2vJ1lrwUoHqgmE9sHS2Osnq7Zm/TxEIFEiEqZk7iRUJ7eFZl9rIrOJ0ZxVrZ0WoyhCGWpdM6jLbkR9vj/8xSNAJWHbVpeONp/kI5+t1XKH5sZOnudO689xRDRO/ay7dxlbG1nVoodDi8jS93/pS4CycbIHagnne1x0L3MzsTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0wuQYCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0wuQYCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24E4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781985393;
	bh=kjkD4wQVc1xz5w6PFFZPGThjvy7wT89tBO/DXqNcEm0=;
	h=To:Subject:From:Date:From;
	b=M0wuQYCHy9a2hmoreqBd/XnzMe+ye0Mzmxari1HnJpykWiSGuVX27qhHxgRKOgLbV
	 Nvb9YZlDGGpu1qYpBibSo607maeO6bqk6vz/m7AOqHJ8k4gmZwsCcwzfKNNVbA+Vur
	 Ero3+vzso7ws7vZj+ZBXzXeA+VIdfZWvTZMeeLhSy6UpfzU0BJTH/rc1zZJwYFIvao
	 rvD1v4x0J9o8pO9KqZwzvucJpOnKCSXkMCBrqG9BEk0Wg4l/BInSiOL+PHSdBkt8cU
	 lf2X1B1f8ElecMAUEvEY6wOQzr0Yj91+zivp8U7hlxmI3EBdoHToH3GRNuCQlBSGUp
	 4aE6sEsTK6UPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34ACCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198539369.1984.5947774029550603960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f474c11c66b63e58f24750e8a71a63b9a8cef9e458a3de7e2d3018b7a18749
Date: Sat, 20 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781985393
