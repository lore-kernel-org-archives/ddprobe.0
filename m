Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD5D18DB2B
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744867794; cv=none; b=hKA2W3fx8s4b6iuzbdMir1UkflSFlD7gC+1GTlyQnHA+KwBKT44aE95Z7cJogaf5LNeFcOyytukzcu5RtdaS6xaxbu1dSbo8l1ViNQnmqrr9dYP7FrNyENmUzDlDf5LcVpbfaBjkxnEPsG9aedMx9cp9h53N+4u0BzGr+m+69Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744867794; c=relaxed/simple;
	bh=O+3xmPR1UvUhQZQ9T05Ixo1lOxg6RqRSAPJR9Z53Pqg=;
	h=To:Subject:From:Message-Id:Date; b=R0uzN5yy2lHWmmGwR0LsJYrAof2tWA2cYbd/80TVH7KB1SaacbZXxbuakfFcjpBU1HYXVEqDhmjj6AJDVADmT8/qEByTgzWAb2wmrSc6wiygprM+IoB2YGEkvBh4d6V5jXSWvZHe5ITaKuuSLXI/uDt2TjgMPwx5DT4I/KxhhEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFdD9Teh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFdD9Teh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3DBC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744867793;
	bh=O+3xmPR1UvUhQZQ9T05Ixo1lOxg6RqRSAPJR9Z53Pqg=;
	h=To:Subject:From:Date:From;
	b=DFdD9Tehif9g9GouOnXSVDdPUAaDsvn0d61fkB1lB5TxNd84PsqLdDwaFgr5IZkhA
	 YwraxxeJxbw4Y1JWn1rtzQbtURC+/HyIJXAHcH5BmYw+o3BByIz1tRnEevmdK0VbZh
	 t8+Gc3wiQZb0HzHHziLcM1FgKdtyAv0I0IONK0cB1a4uiZwPz6mkyP01ztrsOr2Bqc
	 BjADL+NuZQwKUejaVSVODbY54mfAsJQw6c4eon4bJwuGMx+ziNcSJRo2zaoYZTA0Fs
	 jhcMUuJ1EFP9KF1Db+OC7OJpE92Qjv1qkISKC8RzuKzZYsA9bo6euN8Kkc3CGDsFQS
	 zcaaz2YAcRdFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999E5C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486779359.27582.668128128218371623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0c6b72177698937fb02eed246d972d76fa1203edc9e56f7379bfc2f1226882
Date: Thu, 17 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744867793
