Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3061553A3
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756450794; cv=none; b=mprbqVYGDrHss6FxbC3ZQNm5+ST1FF5axQ8+PAmNPHpi6LJv13CC0Bi/AIafAuiO9HlAJHfZrC94ZZyJCmsOsT+mFbCb9aRu5/bxY6lXJClm2nAXI8bLindK0RE6Lgr+ctNKHbo8h041DnaxCqQWIt/ssd8FIlrIUYQh3uPZFHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756450794; c=relaxed/simple;
	bh=Ftm6ic2yIhBBvf0uPHmIu/kLzZQssgUUYyYpvSrzHsE=;
	h=To:Subject:From:Message-Id:Date; b=eU6bsOdVED7k8y/xWOk3z/T1L44C4l7sbdnnH960ir5+8HUh5gdsUyVTy0a9rlEnnQ7CNgNuKmMZe+VRxKl3hGQ5qbsj6VMge9NXf8Nk50+2eNrjTk4/JWCb8Q9R6f0JTaHSlH407LP2Dq7UfOPS5pcmW+1lDNeQ8Pm4z13m5bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/gIEvEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/gIEvEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A133FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756450793;
	bh=Ftm6ic2yIhBBvf0uPHmIu/kLzZQssgUUYyYpvSrzHsE=;
	h=To:Subject:From:Date:From;
	b=T/gIEvErkso3wiKFhpyoFnZ7wTumVLiijtsVnTTpJ2XbtvUfkrJcvzDnR7+j8gYF0
	 TcfGwses3TKiPQZQbsRfIaVeY8NU69hnss0e9msfbQv1rngBE6IoZFIfcEs/IB98FX
	 M8U7d+e8a/jU7RC4w699Mj4R70kiDGZfGP5HzuDC0vHlDrOFcpel1abK/srd+fPBz0
	 v0GuTb1qj1nufd3FdygHaAwf8rkAxcN/NAToAPe23I75vLkoLBW6gkg1ykpNGGevWM
	 5eBA9LXScdGBbrjiMP4snSqtCUbuiqmGrohVhvTbo/em8uPU86VvfACQ1CrevNCGbv
	 BcwJ2wfnoWcwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F2CA0FFD
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645079357.19475.1084467566599385424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde846eae9e34b986ce08cb07a3790c02fdf0634b4b5cf8c8c8d94844fbdb3ea
Date: Fri, 29 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756450793
