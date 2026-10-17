Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF85C483BEF
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792234834; cv=none; b=BZYN5TvBT0MXNc8NISbelW8cDzjzONEeDhVWB1WZmfJTK17sTSUo74bFXSOZez6dXHEjBofLqBsG3Do2byR1xFcwkV5XAQzSziSElHmw5joPVA/E1+Svn4mO7x22PBmWW5ZWZyiYjUXKLfmezsFAGRsHqlws5bnsjQPCwawY8Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792234834; c=relaxed/simple;
	bh=oL5bGIvj2vyOZKDoQuKJbMMY4Lhws9BOAwUAI+c3mt0=;
	h=To:Subject:From:Message-Id:Date; b=hfk7XRYgUZk9yE9sTWY1yEs2UqfFpToDtHbPEmlANo8OjJnEdW+mjuLHf5AZw9uhzPgpIbPZYQNqz/ZzLc4K8vdskyiy/2SiMpmnzF3KFkotJyb1Rx1TrIl07PZCy4sRRwIBsMNxCZ0B+9lQ/Gnvt13CZHPAEMtcYbl59189JtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfACqDXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfACqDXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC283C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792234833;
	bh=oL5bGIvj2vyOZKDoQuKJbMMY4Lhws9BOAwUAI+c3mt0=;
	h=To:Subject:From:Date:From;
	b=dfACqDXGUFuuU2kmRwFkYR0QSoVSh/N3LTnas/GR8hP9UAV5aSftlbgJq374obsyN
	 nK+3oqjlqMKk4Jfm7qC4tGsS4tVkehtqbdHrwfi8CWMLgJxJXVO81NoZQ7IlVM5456
	 ccwipNUlRcp/XLv3LDXIXCdvxOPuiheiHDf1Fq6hCuibsBjw6tQJp9vbDVEb3Iek5I
	 vAhY/z26UQe+r8vscAZI3mRh/Z1k9+Dh07o3yF9n6VKRiBX+y53dBRtz5InGAMtHcL
	 dDXZQXANVG1vim7UsHQnJVFjPmOYEI3xEJqgiYmajfz5H4S9eKKoMvdmfyDjSA5+71
	 vnQDXcVmbSD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AEDCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223483370.15505.15843321007011784266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed83fb06334509aba4a565b6466273e45192c60f7a63e98e78a485bb833e3ac
Date: Sat, 17 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792234833
