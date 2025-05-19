Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2013A1A83F9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747679394; cv=none; b=lOkapYVJYVA7hWbugV85R8n4K+p6kYl7ZLrglUQ3TDUJvoHyXRdfkhfo3fq97Zs1hn1kKUA0U8XA/BWfX9VYSoqEN2QkAEKeQFyL5AbbnS3h0IRPlsAH3Kby5cwI83k8rFuHxiOge7ixCF4wA+1GKXvLl1OI86TSE6zpiRtHhtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747679394; c=relaxed/simple;
	bh=QU5mYVOF3YiXouWKNUUlRr1D6p7aUJHjMgL+Msk4v5A=;
	h=To:Subject:From:Message-Id:Date; b=U7GtiQaf/f6Yn3yNWROfV+7s7nF0b1pGIhycFvuN8eVq8cDs6ncaEfkWxfONWEB3xgWoi9nqm2c1StJi+TaDOCtN6UMzwS1KP6oG+k88q6ypkSRjfVGM1QVpFbmo4M6aHOhU8Vohp/I95PctmwHvEoEMkBQdOwGMvbuaKUsr7qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f50fyXGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f50fyXGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1341C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747679393;
	bh=QU5mYVOF3YiXouWKNUUlRr1D6p7aUJHjMgL+Msk4v5A=;
	h=To:Subject:From:Date:From;
	b=f50fyXGhfxAYMwf2piYPCFdO2IqgxI0HWmKGEg8wUWkxnCcQ8viqdtZzgtvjfgrKq
	 upo8TB6Rf6ZPhwuzuycQxKhKAGTbI4M+xz3yljTUouYA37Q0S75mNvc9OIw0j4nW7f
	 RPIFX43trjcHjYhmuld96AIMuwkfWxa1+VHpx0OzQX2FXVqvu1eXSWPf28ebsEGfq2
	 uLKtQybq5R2RaIOQei5GJT7fGx5pALjch2KG0fYDRzxwq5hg7dqoZEiYUq9H+TdPst
	 TcQFzIEP3G+QNDXcW0t3uCTJ3nWAneaxuItJ3xuVfSnL0Kz0diGXZ6NcJXxH0pOPFp
	 mq3aFt+bAFN7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9052BC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767939358.30972.11247369057183872131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32376c35b310188647d048c7d24155e803721a24728f543f39841049a7643a5
Date: Mon, 19 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747679393
