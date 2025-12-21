Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231A72571C5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766327634; cv=none; b=PMqMhQ2Uk20nPnEb2f5h64JhHlpBHK06nay/d+wLtHvJlQ1ee4lOLwB2w7YFanLLTTxavp+SzDrfN+PUG6GiS3blt9Nw4/CfyI2a4/rsNi0AVxrztTYzftgOhoJgvcp2Ae10Bxd+vjmUic4S3lLMe9FZ2Nr+/q4tpzyx7E7CuyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766327634; c=relaxed/simple;
	bh=3Vvg5pWU29pNRrV9wf+t6zSfS5bqBEjC+z53xGrCmsk=;
	h=To:Subject:From:Message-Id:Date; b=mJp/Zc5/esaw3Gtzi+OmeE+nAqc9nnc1MA+T1amVG75a0bF3uR4OmmEzV/Ga/Y8UFlev8XUvU5bv+9bMQ/IIz+RjOtnta/cn0Iidf29Z6UzPwIc0dVgmbIBy/dbHnBMLJtamYKVExfDUZtwNsfeVXJYF/DPi9vxkNlfTtg9+saE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8SmeDFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8SmeDFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6928C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766327633;
	bh=3Vvg5pWU29pNRrV9wf+t6zSfS5bqBEjC+z53xGrCmsk=;
	h=To:Subject:From:Date:From;
	b=u8SmeDFOa1bZX6C3GV1/J84xf0NpLGE2Acyxmjx/Fc2bvpfGBNUGtH0aMuMTaFtJc
	 1ENp7bKkiB/qGvQ02kW1MJa+lk5YtxVRaYIi+x9nGVZDIHa+1yECR4+HiuFKUN8epw
	 GlZUbsd1qUTayKpatPuardvCW3Hbkr7G5/QLPSruTEGQWyk+VnnsWzRJFJsRjide4+
	 CEfgBYyn/CRafWdJWg/vlVQ32vul+zQwu+zoE5kkWrL10AQP6PTsj1N2oybHlUybyG
	 CYxcIlVO77Z7pGQXhMIjmpIKcEb/P3e5xZV5z4h+o0ElRwNy8AYO95IAwyPnamg2Yr
	 KqZjCn8I+EoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A52E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632763358.6753.7716445608561658359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a287d772b549f85039a389d402f5820b6874c26a257d9487a1d20f5fad9a4b6
Date: Sun, 21 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766327633
