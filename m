Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D40613D28F
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739103954; cv=none; b=Q0+Hgp4LJg1ds3FzAgY1uJAY1HnkCH4Z4kSrTSgSJ8ROEN0yiPn7n9jO6hUl3/76W5X/Ubj9/U5EaJp+We1YnWlTWWmESGQq6wGCxZVs3viJpjrc8h3lPiMyNKvrO+V0reY6TZayfh64tCXz0972M5+VW9uDlGz0c9j7K2UfeVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739103954; c=relaxed/simple;
	bh=kIfVenGo/gA85eJk8rZyoNcvzTRBe5/rB/GrKGvySgg=;
	h=To:Subject:From:Message-Id:Date; b=OhEdFZmAn/IOjh4ahWNJKBCUCXqLqvAgfxJt21yaG61CtzDmWqI9ojGTtd6J1pUdVOJwNO1C5t/c5QpA4VX6nDLP5bd6Tqfx8d9XURNofU6vYPSWtfsZa24dFwFTyjVZiaDikvxbWcdeXGjq2X/Ca4EKNwSkK7sz/VdpYM52cD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQXxUZan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQXxUZan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6923C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739103953;
	bh=kIfVenGo/gA85eJk8rZyoNcvzTRBe5/rB/GrKGvySgg=;
	h=To:Subject:From:Date:From;
	b=pQXxUZanUSljZsfFbc3Fja4kxT5lyQ/Lk1axmYGffXbO2oURov/sRZ/pKGkzrMSZz
	 qn3J5VneHvWbuZEaYaaLnNN9e4uFl0CbNSHc0VtiNHI/NY+GbUqx7WGusIaaOou/7h
	 XZyheiCiSz3hRIWjVG+G435fvS/J/esIIKsx5U9hAjpDKa5spQYd7KBAaPTqYQ0Kwh
	 2zPRbVJPGI5aMvraf2cgFrBFCgBYX4W8XyGzzNfmnpnip/NiVtV8tr7L808T4CGOU3
	 0ITheOyhBNw1VLw8+Rrs9H7TCvnbV2EFY15TuECqpRkYWtB+lGyh5Q9SCh35CHic3Y
	 p0wDUjdIDwNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957F5C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173910395360.17437.12806740252838729459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803bc34482acda8f3a0df2087129fc6d3e48076ae85e348ac52cb8308bea2381
Date: Sun, 09 Feb 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739103953
