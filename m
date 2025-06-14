Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340CA2D9EEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749926395; cv=none; b=FdW8LWF5iesDS/2mIWxeM8cKJP0WMOMCIKc+Tiw+/uNTLufONvspsuboKWoCUjcICfbnh3Rx7C0PKVFZzYUiZ0LY+KTSikXaPbbp+ALAfDWqtoLlbD7rcBxXc2LrBv6gbamWAK9fWpud3nPz7TWUl8sanfpFYMAvdPQvz9Y4XcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749926395; c=relaxed/simple;
	bh=ckQeyqoJe5ZZcHgCRx0swjRM+rju6QSXzloEFaI9p+c=;
	h=To:Subject:From:Message-Id:Date; b=mM/Wapa4OxctRS224xH9BMtwbv3tOkpVq3k6FlkKrerNDf9QSf+lOkyvkQJTgFwKiGzazVjR4Lc4zfyksx+HWkt8AkpXftpCR6xwqL9C70elPt5O8u+jdX4DVt9TZa3pVivx6f/mA+RvFiByltMxRFHx1NJM+EfZyCmTWQGsh9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwFUJgfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwFUJgfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB2AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749926393;
	bh=ckQeyqoJe5ZZcHgCRx0swjRM+rju6QSXzloEFaI9p+c=;
	h=To:Subject:From:Date:From;
	b=EwFUJgfIBqaHL5iZMD4QqwCpGgLkmz/eYlVCAMqtU/qnUBfjZm9udxafJu/KmHvLf
	 M1+ECeq30zGLBZb/V7QQHHv7vwIqEHrDkyGOS8w8cnezZT6dlBrODYhjl7I1Zc1nKD
	 EisZuQrvM1Dx4DVbppskogSZQUpTrXlSO/5bfviANw37LTKkV0etanMmpA7GwCxLBd
	 wLLizjqQFHX2gSZQ7hQ9Rc/AFrQeA5dyxz5568cNxcjfGAADlT/EcUlEb3+BJcjq5q
	 oDFRwldUKvFWaV5zy/AcAkr1LeApc+on5G4PcgkShfyjDSW/MeMUSp4U94iGGS8YNo
	 k/ZDcTPoZnnHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9F2C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992639361.19322.6290064317874527667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d18490966362f1736da222086454a0c33b9c83f7005195528e966ae52b9af56
Date: Sat, 14 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749926393
