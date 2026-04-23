Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE22332615
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776976654; cv=none; b=eCUKblcjexcG7HZXofw0hupCq5o2JS/i88Y3vpOUbjHWpbRwfr8BKmOLZE/gEzMSLddXja0ESDt1l+CMTCpl0h2NWTL5LbDwGvLp0pgvti0FEoW+T+u7F97z7SpPYiXHI6AtmmLq9cEhBmhflavRG3RCvR3ZbOKb0d9pMhfy+fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776976654; c=relaxed/simple;
	bh=o0f/9yCnTmOBA8OzD8pEhkojyOGxAXQ+SpFJN6bmSQc=;
	h=To:Subject:From:Message-Id:Date; b=l7OWx+RYKyAIjJj0xr4i3GcT+EMosGBU/ZDSKh/bY5yFiQjuXZxl44e+BaTmvA8vtNwIvDAnh4062u/HsSN/Ui7cpKwGMPuN61UJIJWcZ6slSxZhwOQl9iKgb6Xs25kVD3vNKichnPqpALp41UcYmcm4S6izqki1/4Ktyd22pI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXm0Vk4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXm0Vk4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B10C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776976653;
	bh=o0f/9yCnTmOBA8OzD8pEhkojyOGxAXQ+SpFJN6bmSQc=;
	h=To:Subject:From:Date:From;
	b=rXm0Vk4GI9rNGs9DlMwszT+rWUpAVdhR4Xd9eyHXzTRZAtac8g7sT4XccbM+32QRB
	 ipNJsAD0xqw0HvO5LN9TjukpEZjR/07Lhc65Fw99Au9e0h/hTR+i8CtSBK7XSkj/Ax
	 UHkKPO2S8SWGkiJbKeFw9tgzzDwW4L3hFXZBuinEOuT0BW3DG6sPLOel+3KzRoLILt
	 yvB2ZlO9LgjaxpYpdAVhYGQE1r8ZKxDKsSvcrvk2nRGrdlzflb2F0i43Seyctg1Mvr
	 pdwfYiAC/HVAKWGfyFQsSFpKNFzeMFnnsihxpljWXWAHzxcMiPDG5OllyPkdhCq6aY
	 Jp9/KxDXMl7wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFEAFDEE48
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697665368.10125.14179365316041269041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc3fbd07d9b66b72309773c48debeff9f530529db50a4c8dc57b419630e4079
Date: Thu, 23 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776976653
