Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376271459F6
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748581795; cv=none; b=jiyNzwdfDCsw5CWlZE8CpZvQSo58dy4yCzsbcJJW2fFEhsFNX0KKM17XGFjpBGHtUnKApzmbi/6aiSimW0qZiDsdqrXVoFCRLWk71EzXDg3JtCnpVOIqLTolMfK2HsA8QAgUDjxrpwlKIdE6RLqIJTAZYKmXrzPyZghL6P2na0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748581795; c=relaxed/simple;
	bh=uIAeq0+IoM55GbwiSlqDxbwSy2/yp5VFPn+Jx8KkvSU=;
	h=To:Subject:From:Message-Id:Date; b=gEQXMKI7QcR7UTssZoZ2xqvQNmd4JwFHMyJVTMNoeKvLcEhtJ8Oj4ny6+Tjb3kdKcvKWeig5dHd7ISsfPU0qmZ6XP0xwR3Db8B0OS6YdpHn9WR4bvNDXV7VuDz1uLqxO9TOmDWpIH7KcLIdCbI8zzXnp168FMSAt3FELqqnnvsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWz1fCG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWz1fCG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0779C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748581793;
	bh=uIAeq0+IoM55GbwiSlqDxbwSy2/yp5VFPn+Jx8KkvSU=;
	h=To:Subject:From:Date:From;
	b=dWz1fCG8mPWNwTUPWtg1pgUnWJvWF52LR2KGV1HgBW1g8BoJYdorOGfgRzkepYEPl
	 TIQqqnShq5aEqhajyaxGO8ZiCEdlyRsB3HkwPXogLRnpT1GKgnWnGX4UDAzVcmu6lZ
	 La6Z4656qEpSA3tYx4ufJZ82Q2o4l/jwzDg+t/VaemCMR58AZKAppvBFuglV9BXphu
	 3KyExavDFThkzS+9lwZ++bBKfOoeCj3kxgkKJfXyotHPlnzM5LNt70WRAUXiFaE8vi
	 u/wvvcnJ/bP+ntARQ3AJdlERp76HOd76sm6pIfU0z9I4c92yJVntCEU/8lzNNmwmzv
	 fZND0HjvLkeTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE40C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858179358.3473.10439746375689887470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17316657e26dd0dcc31b14138863415dde36a6cf498ba8a825af20182f662df
Date: Fri, 30 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748581793
