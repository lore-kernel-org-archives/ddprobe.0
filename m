Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E68271A7C
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762021794; cv=none; b=mbqhZUfth0lUHM6vef1dJrXXx8ETYY7ggPCQ8v0XBylnMUVhJ31jZqqlM1A9W4DgzdeH2gvKbmQz0NrM8qYaM/bURnuGKpmmggj5FFTl6k+VuSLperfO6MS//9Boogix7/SmgXdPrmWL9uGwyhp6G/tLrkmAzzT7nMfsVSAnp0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762021794; c=relaxed/simple;
	bh=oXeTciTak+oVJDQe5/8FTkXeECEaq9C17xtNJkHLNYw=;
	h=To:Subject:From:Message-Id:Date; b=hOVhcag221YQe4L5MvGO7wKJRURU90THWlYJySi9RAtc3VgkyNtGVElxzgFzUQBpG5l85+ccU+DT6Jdc+9Qy+3bG7uqSThvIolPscQuavvpLla6m+nTUWyeXtH/WYD8wHDKBOHYLGLJJgm3qnkGWLBaf+m7l6il5l1BuRyORVNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlUii3+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlUii3+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C7DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762021793;
	bh=oXeTciTak+oVJDQe5/8FTkXeECEaq9C17xtNJkHLNYw=;
	h=To:Subject:From:Date:From;
	b=jlUii3+BgLEOLy1X1mi8KwtetevM5YIa01NjBxW+MqVJZCPbQxJP9LewMneUCbQjP
	 zqL0feWBlPpnOv0pHp9Ql0XDIKmjOjYNRZOs6CYWwDFSLG13GhlmTXCJtf+piKglvZ
	 jISwG9PaVtzUav95XqKs2L6BCbguCt1luGkpB6WEe2Han2KPbgdvAZE0GkvPfpNKNY
	 fGKYaEnkC+q5Wno9MBMpOsrERgrjFckC8o9OUa08tIU6aDdnq4bkML1GtTNEgy4rYD
	 dFbIhrHChXcNZ9WaYqLKXCQfs1hbLU8ihzXibRRacNppQBznsZgvaKDzusos3jYQhC
	 dfmJe8CwcNaJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC68CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202179357.7703.8848392656042795612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7a1029214d008150df8f9dc402166e600bd77a2bf56317da4d53a73761a809
Date: Sat, 01 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762021793
