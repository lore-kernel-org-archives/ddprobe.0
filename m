Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7EE1C3BE6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737579954; cv=none; b=iz5bP+5mZzNGbZ+qxk77xvb7S9rP4It/rzjkWVyHCYGUnXfsJGj6NJoXu3xhhzs1OS5dixcwZewhEthZ+zSULI4dYhVbeQ60kpA9dPnX9Tz61g/eAjtjSJuoTwsVUeXSWZ1q9SQgFbbuwheG1PgWhosFMVxTgDIJ6gCr0h6WtKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737579954; c=relaxed/simple;
	bh=og4+MJFD+1/sQ5bAcVy9yIljmD0kOQyAbc83mZRoNbA=;
	h=To:Subject:From:Message-Id:Date; b=tplDnhHWlgzCrjqJM/oLEKj7DwUa36ugaFNUsLksAOGc4AB+WyTG2uMjjQ/hCF3n5eZSNfPcVY4fzczjVHoAwuv4oKOzjyFskM6MhyDlC1W6unXBS7DC060L/hm/3K5AAC94QuPzMGX2/6AD9omYzRA4DrtKRSsImPGyli4BWM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+tXYfS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+tXYfS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D99C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737579953;
	bh=og4+MJFD+1/sQ5bAcVy9yIljmD0kOQyAbc83mZRoNbA=;
	h=To:Subject:From:Date:From;
	b=q+tXYfS3d2l9bhxTGUtbSZ1zYbuvGNo7NnL9sYdSG6lxpXu3YHgicYbr6fqQlcbIR
	 Q4Jadyy/a7MKcA8lXQH7TkrZYIMjSmZ3gtj7DbD7fRuQAQRwuhKux59bHKKZhgafnP
	 ufS/3gbE9jnsQNKj7l1tVUDm11AOI/pBrvl0RqTiPA90+3MeKea62D0UwOheKW1Uxg
	 suz4n6/R8eGqJVgLz1c90uFZtBD5NoXIFTaZalyiaWmDF7TQ2hyhMEhigxO+Gb5SHo
	 Q7EHVlRiFIaryTHDpnVo4hZX5Q3KY3ZmSnmfSSkk+Ip22wf6s7r/h7WIFZZcKuPSbC
	 JrEXJoCKXMlOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D41C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757995359.23937.17500203184590335936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2239fce0c6a37de6accb53ffbb2599b0835ac73a0422a4250b484ca5798691
Date: Wed, 22 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737579953
