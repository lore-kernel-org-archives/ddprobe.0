Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297EC70827
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734444354; cv=none; b=Iuf0FZd5V0eWFhHLFTeVI0v+C9hMrTHpM0ILKOdARK6tPNZR4/4veITzD+7rPdsRlTX2EcS4H4Bay0DNau0uNgCrHEVgMoNBbWvzfkChxJaFDsSppacg8poNi3jmN81CPTgGDaSHsN/WjQXe4DXiX2ugjYo3NtPbkVjhi3uD4/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734444354; c=relaxed/simple;
	bh=5+cttoGLSkwbVjFWkSEefY+9Knzd6pMXpcWRHbjKf8w=;
	h=To:Subject:From:Message-Id:Date; b=SRZilekP6UsVfhz8VsK0r2bKQnsN+gfDOHscwd6JkI7zyptFOXy8b6XLc3TfY4THkMdJqzEOYnnWzSvhoEqlxOOP5Tazytf3pysyKXFBfv1XjWZjBG+GQDB2kGrkJeGjH0Erypi9GxN3N+842tQc7TgFBp+Y3o2zsi5pcHkt9qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+AAaZX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+AAaZX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB5C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734444353;
	bh=5+cttoGLSkwbVjFWkSEefY+9Knzd6pMXpcWRHbjKf8w=;
	h=To:Subject:From:Date:From;
	b=P+AAaZX5tzhjp/7wFc3lSJ1ixrj/1w1nl7raXvFvkmGd55YUWiHb8D+/3/GV8eWzd
	 2Hj8Ufw6rw1EE/Eff1AV2FqPR9Ys40Dc3HnvfDD2KwETGSiigRlh3nyfidNICzh0e3
	 8CsNg1sKr1E2pbv/Ja2F7IXi7tLSicjEEgiKjbLZSov9Y1OETl4vAOBSrbXZzxkFYp
	 q1TYLSl0h5HjhyGppfjJWrulqbJkAMV+hALO5p7cKIWaPSaNl064xO/n9AzFW3BHop
	 Jr/ZJtZinbQMWLv5ueBlMOoyjkd45bTuNJ2/uTkcvhFxSQJDGmVZE4HS1ioksPshjo
	 /kyu2BwxMrVZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B68E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173444435359.20320.12915262213339942320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b44cbf081fac4e61eb9fbacc991d3a3f6401cc314ec19cb0ecfbbc5a46862b3
Date: Tue, 17 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734444353
