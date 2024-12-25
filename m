Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1C838B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735155954; cv=none; b=DQWGLBrvBnhaJ03k8FYNnRQ3HEchAJBrCyaZa1HUsDkR431ZLgnnhxvTjJP7iM0F+IvF0v+WU19W7YXnN9QhNKwmzEPP6B9Vqal1brfKf+SFo8n1eluGj1IZd46wLDw81B3kNu+ATQRSSWqpdp8/QS7lQpzKe5lWLR0lNs1Bzc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735155954; c=relaxed/simple;
	bh=NMGFAni1qFykuLQC/KqOBH8UIA1PQPbefUnU3lHwvMU=;
	h=To:Subject:From:Message-Id:Date; b=IC2iTIlfy9mEBndfV/BtxCK8HjrsmDgYCEAmrS8HNKW/wphdj7AJ+hZhcIlXMGr81CvRHxGnQvnyXWVagDLiG8uJZjyUZBBI09Q3Og9RSNrw5xBulkzFgzhzlmW0viYa4ILoyN3BdjCwMQDSnpzxA/yk7zSfPhniT4OLQa7xzsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2qvY5Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2qvY5Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E47C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735155953;
	bh=NMGFAni1qFykuLQC/KqOBH8UIA1PQPbefUnU3lHwvMU=;
	h=To:Subject:From:Date:From;
	b=i2qvY5KatECMmuofwJHzQhVv3lQvS3krfjvDs860ReVHisf1MKyg7xFftDqGcITpb
	 Deg4eJPb9Qo1Cd5L+8sHNdn8v88qgevrUBga87BulzbkUv9Gnl2+8GXLIAeKThOT33
	 aDhvEffyS6hZw/wq77nxvDMkIn0Ooaeoo9zCC+wJxqc8xIZCfyq8qAI8hCPADdSgzO
	 QxOn+3JN8w34lJvUA13LHKMjzuWGXJjRA8rvckeKORzGvxKTnH5508bbrT6vNoxdS9
	 PhNltLm8vsqN7IDDFEuxVL4enUTMCc3hc7HuJlynXHlGMpjFiuFuFGVareKHunvjO7
	 LrUczKFcgDX1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB2E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173515595360.21366.17502431471781157877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67b74ec418699c646e54ad6695d15206b1c94016db6a266fd3444ad00c04fb3
Date: Wed, 25 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735155953
