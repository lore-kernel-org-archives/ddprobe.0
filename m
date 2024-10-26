Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D8433EA
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729917954; cv=none; b=O6sgqYSa0TpydJLRVG0kwfiZcJgV9XV+LM4NuR0sabbHCD6fketI4SlwQdqDcV+/u+eAn1iyUp4H02PrKoZZ6hu6+pV36Ue2tdtwXNLaVoV/CawvBQQelZ76mXJYziq3yjmahqblchG5ik5zcR8nQxUiPIjjUbjVrGVwuqNLDn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729917954; c=relaxed/simple;
	bh=4KkwXnxjVhpOENq9S/pFRfEIRlAoFqeubB/e4IWEZ9g=;
	h=To:Subject:From:Message-Id:Date; b=k6iLkYUBaqrysA80KM2bc2euT4mgjMXSNZvOgIsJ4IWjNO/+ILrAYeYnYW9PKn7z0ug92d9RgK7YlTM5ylJ4AApxKf+7YgiEUYpXOupT/LWOPRWanweZzI1QwUtfD/3HL0SjBvI+tWkRIzImNjC0ljuj53dRmdsW81XRV3voASA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPepsQq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPepsQq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F10C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729917953;
	bh=4KkwXnxjVhpOENq9S/pFRfEIRlAoFqeubB/e4IWEZ9g=;
	h=To:Subject:From:Date:From;
	b=oPepsQq0fixr11UlOU+jL+YRyKKjv6kRZwTfN8+Ax13t6w+znVc0TZgghdPU+KVBU
	 n8KXd/6XSTbLEYkAkH+T+jd3v8E/Pdw4mXNgdiv2veyNBatMA1xpf15Ke+4BgVk0dg
	 +BKzsjgwdccsP0Gf8w5ARkUcz3kl9cMEd5JaYmOiVNk3vAE/a4y/YshB3CObV70JJz
	 lvV7iyySUZiEEFqnhdY9NXC3ZUT6rtd9GiC+3K+whR6JvI6b04GvFhCtJ6JPhcBr/t
	 L3vCOqrtesWNRZn8fHDYixVdHbWWzN0HiRJZktZ0eO51N8buhLK+hCJqQCpsR/OR74
	 7NxLkW4WF8Ncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE90D10BE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991795361.13999.5244469518446794547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83feacfe3e250caf718a8e41099c8b5cd5bfac9fd83e1f67377fb085ac79c28
Date: Sat, 26 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729917953
