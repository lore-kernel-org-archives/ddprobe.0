Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208131EDA2F
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753855795; cv=none; b=URljaunMKl5OPGXMSrrwsDRoGUNoiRuT3/9iYk5QG6njiYlFuT6S1Nz2oe34yehS65Gf3APf7SSDcLaBTJHhIrRzYSAXcLUJuGggOWWOByS9LPYdHhCgfN4xXqPIHMbKi6Ajy56mYML1j5kj6D+bHjYwyvceu7U6AJ5iVA5NU/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753855795; c=relaxed/simple;
	bh=jpC8gAE0F0FSPkRRPOogdDKh3M89t2ixEbzSiVzKb90=;
	h=To:Subject:From:Message-Id:Date; b=cdh+cYsrJvDuZLACDVqYvlgI9q+HBgTh5CjQ8gNv43GaqsrVmuuoegI+npCZScQ6r+k9WSABquIR3PBPk1c7RRgB0Pa+E/ki+KKnOC8rxtnxLAyHUviHkKitGSHtI3n00lSTZJIjBwAZ8Ib31OlFMVd8uT04Ik9oVJj0GPnYBg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMLzgdKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMLzgdKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753855793;
	bh=jpC8gAE0F0FSPkRRPOogdDKh3M89t2ixEbzSiVzKb90=;
	h=To:Subject:From:Date:From;
	b=GMLzgdKYA9KLicnkXPTQAgBXVBuYjL8ZoBzs/8hF1gDtiHiXsDFdbXeqtsXREGwa0
	 162pNNVV3LhTfU5GiDzjtvAJ2ycKpJRY/sNcfPdWOH19c8Jn8BfzOpAsQv2jn+4p0l
	 +WgEn8Qkn7q0mxWHau8nydh4WdRKLxnHfnf4YewkK2rtty1z5WcM7DSM1gyBWahv9S
	 uhgISVZG7mLDgyjupzWJWWNknztiKju/WgXcK2eNahXCGdKxMyihsemzKrzH3ga/io
	 R95j2CAWC5/E+c1fc1M9e+q7nnYu+lVh/9OxmD21BdAoTFpoptZpru69YvP0AN2kq+
	 fv85ih31cDAKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA71C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385579357.16034.14343247894938431713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec5a794923263cfb83a42774d547246203abe3b65f417027880d8a79ffa883f
Date: Wed, 30 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753855793
