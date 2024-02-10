Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244EF38DC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707607097; cv=none; b=cqgC01NeX8AGXSmp1Ag4xsAoHiOApyBiTHZzxZGRP/DQPN7fPuZ1zQxJhzlYhoonAHatsMIbujHCii6r4u30Aa0DMI+xL7tvaA+gjur/IFsmmvH3paOpr2XjO68wWKmjjBsIRizmiSaEXnlUqwELEnUWlehM3VWUSH+FfUnjXhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707607097; c=relaxed/simple;
	bh=KPdgTHz05vct+yHyMbrse8LiDH/5xlRvQ47K4m6NVTE=;
	h=To:Subject:From:Message-Id:Date; b=IBPgT7knV7rztgplRoZaMoIe2aDvcbYNQG3biafr/H0TJa3cvGs6BzB2qp5Nzdmz4vRWNhHIoZBAAJbevPihsxGUkhh6ABbDeEH87ZYHuaJkG55NJDdRU7rrRqRqkBHauStkY5nsWk9oyBnTA8SzpI97Ei6O5UzQM+R7IB3wTy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vt83BV5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vt83BV5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAEEC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707607096;
	bh=KPdgTHz05vct+yHyMbrse8LiDH/5xlRvQ47K4m6NVTE=;
	h=To:Subject:From:Date:From;
	b=Vt83BV5MnwMCvuJx00lGYbRoJdGCM3s/Su0XCyNsZTKqYGa4cPVy1yau2lA4KLP5Z
	 AaGE5OAkE35wy+gxl4R4kzBFypD7ZYGHhDn1TJpWgWAitAnhTCEiUHtiublOc7ZCZk
	 OrVS/Oq82bhAXYjgW3eYCRyDVHaxB9qnZHG3gykjDC7zeBG2sQw/CVpTHeDoROlCzq
	 CEyL5DJVqR5R7Idhwg+OLoD033DvY9mJlEWGlt/Z0UYObTcsdBk1d8LPGUp7KAW2+E
	 YHVHtL5eXq/8BLKSpCxWVv/CAVS9+HdNE53Ouzcr+2CksauZjGlR18fPmrLLpHOehW
	 0tNXYdpMwPuaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642E6C4829C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760709637.9908.8592486516145619200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ed79510b95ed583b9d3e8f0ad8fe8428554a8a2ec0985e56605e5f9ea708ba
Date: Sat, 10 Feb 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707607096
