Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254834F881
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771881894; cv=none; b=PoPcgK2cDeM5ZM33NENf2Ooz340IQA+wDTI3zoE2yF2CMCEVNh0ioS9JiwC9xmgmiJGLmSO5tQQYqMt1cAyJNiamjmTGVLyyeUjvbwGc43vZ0g66FmY5snuUmYsgl1vgXNZTvLvOB5bOntv8sB+uaU5tfcotmsmGOBKnU3EKTjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771881894; c=relaxed/simple;
	bh=9hEZx/yASxfdNRYIuXO5eXMCty9CbkczOaZFLN0DU3I=;
	h=To:Subject:From:Message-Id:Date; b=kbFSKXlFbcpmmQkAKOXoi6pXH8uFKM+cNw//Q2HPIqTWsxoROqrW0YgnW+IkxC/IkZ8GcuZuJGjKkOiEGf6Ff3TfskL1yIpcd6JR36ShW6hOKc1OvZFS8QMUyeNpgmdXeo6oJYi1k1yBMSqPJOOa9WfBNcDCNO1wKZ3dHXZ3VCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuGkvzAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuGkvzAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B499AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771881893;
	bh=9hEZx/yASxfdNRYIuXO5eXMCty9CbkczOaZFLN0DU3I=;
	h=To:Subject:From:Date:From;
	b=iuGkvzAfN9mLPwLWveYiSBGUwwD7YHFvBolh9x5bB56kwHBUDDRlP59F37HvOijRS
	 p48twtTOv6rbI37Px3djCFta3zO7y8vcM3AW46vBLuoBhIVrFoU/5HvX8gdBsCiwL7
	 xIxZUtpii+oV4o67I+18c5jdBSnNgB/fHth1DYzyzNTh1b7IYOqiUax6UoUX4i0sIb
	 Vv5HwvE7WAUkjBQbRadyqLA9jDi5OoBgmFkdBt0f7iTrjO0wXJBFd0bBQkABx6l8FX
	 YX+wdO6jxCX/Nxn2HKogQ0D1kXLAT1hynoxnvlU0CeilexIrpKy2fkl4KyDpb2HUsP
	 yshYyg96w7smw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6E1EEC285
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188189359.17712.3137919712444365997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14080c9d1e81b65a0d8a3fc9eefa2b602d78ea714b07f242a761fe05838621f3
Date: Mon, 23 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771881893
