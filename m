Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B8038BF81
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779815554; cv=none; b=fyXRKdOWoLh/JB+1gpgyF1zhEB0RbrPNYC/w/e7GWJ9zjsjffcRXIBjKyJaxlhx7T5XW8zq6Ml9bj16F0AGzheCnYUoQLf/Lep+A9pURhvMoMlADbNingGWNMb/Ng6+ZnY6tySprTZvbkRHJK9dMsDrV1a0JvE/rOn+O9RUHvks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779815554; c=relaxed/simple;
	bh=GzrN0ydeNYEeOOYOGiEdTrs35dpXYp1sKDgLR6hfFTY=;
	h=To:Subject:From:Message-Id:Date; b=X/6P3CssfDXb5yakgvfvSlROOuv4sgiA0eF30Uycv5mMbpkYBh9lWdyeIYymnZe6ryFnZhD0USwhZeXf/5TJj+D5R8a3mAoNhTliulYGJU+KZX8k8H2pdOyvc8blYJoQa31ab13MQwim9GGSfMdVv6Eqxe5vhds4kNY71HfmH34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfP17aMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfP17aMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC766C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779815553;
	bh=GzrN0ydeNYEeOOYOGiEdTrs35dpXYp1sKDgLR6hfFTY=;
	h=To:Subject:From:Date:From;
	b=tfP17aMZziHJuJZYaqgdQF+HIKOKDPTFOMdrGa767AZHvJtHXHG966kx7AUlcjhIT
	 /yd5g+8biIpVrPyGRWpKqG1cxqzu9Ybm5Lc6Mwkr3laFbjI7ieJBsXCa5i3itZ0w7g
	 Ww4izNML7C3RUZJgrqNGZ8FH4SnHlSBhF1p6i5zHnr7aoqNOfgmo6uE9J8Gu9Y0kam
	 kdi5QQzdNt70WN32plJkdbCspjOoKfTVTFtFwEjeVw4LPDzC2cUsbXPgjKX4seXNQK
	 Nv0/uggG+W6xQtsVDEtzXzU/JOWFL8TiI+RDbqqWygP+shbLJJYlFQEzgIVRtuHI/v
	 9kLWoMgAL+8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE1CCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981555369.24265.14242916516534456144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4c2ae6eff9e99fb7e78bd70746fa772bfab65bb824e5165a07ad16760a8aa3
Date: Tue, 26 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779815553
