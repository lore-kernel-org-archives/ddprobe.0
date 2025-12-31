Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113702DC35A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767209034; cv=none; b=roHS9ao04n/+p85kA5Fxp0qxXmoG/5qGqepJkZr5/r8Eag7LOzjQe/gAdui64SiFwQ2dinhJqxz+uzXq+5/j5yTsgk4rR3kbxE5g3amNQULp4MgOxesiGglMB1ebEDjuLsaZ+6axB9uhAz3+fPrWQRFLZCTBl3AwpCoGYpJb5N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767209034; c=relaxed/simple;
	bh=vjXzf4QNDpZx2sxVbIVoeSTRGVh2fwcKRz/qCxDRyHs=;
	h=To:Subject:From:Message-Id:Date; b=mjbhsk7QL7RIHhJA+oa/RIYQ12XxzBLX2Qqmwr3phIkzjCIPts/+ODP6CmypJOPXiKn7DalKVUX8OnMwBrfOHRJ45xMZ6u6WO+b8iGWVYzeIWbrdTecJN/jE3QCL/bsQ6e+gJUfBa50u/9rb4iD59ltEg/FNeCELAgH6n1H+TE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2pjUVnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2pjUVnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A009FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767209033;
	bh=vjXzf4QNDpZx2sxVbIVoeSTRGVh2fwcKRz/qCxDRyHs=;
	h=To:Subject:From:Date:From;
	b=R2pjUVnp229hjp1egRpBchP/MGrh901IDD0dFZNgpMvlvqAVqsgYSsQtxbqhAKHDx
	 0dSrJ3VZAVPYEUKikjcyAElFxmYHP/AQ+/N+2pSNgRVLURip38larehMy4dZxQeHiY
	 8Ag+Jh5bd3/jf/bdED+cEPobqjoid10w9RpGOG+UUyYNZzKgTfBNHL5JvHoB9Ar/w6
	 H+KwbjD+9rCa+QXAeOzY9cvHfIFmKFEQfkOcjMWEWf2cU8xEEa0B+wXIewIWMixmch
	 v3Ro8e+ig+grBbrtWW1CYkVQD4eJbE/yQJQDYcXd3IG5YVo1+bVt6gZjoSBq5Q6PXQ
	 3LGWm/qAd+W/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F211EEB56D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720903357.14894.9265051546495328778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef773bfab24571fe8a872fa807304e83f1fbfde2bd6fd74a9ba2abfa7f50ed49
Date: Wed, 31 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767209033
