Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D2029A2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749122394; cv=none; b=CcXIBZTPXKRNNDFNubZJKi572F4i7B/+VygAPOio5urGQoTBKMt35JrjxXL8BOgiOtVqKQhZqoW9/PnlaewOoBJ/Y3Jz/25lTRMIxJGneND18RmPvmIAEzdm9ick9Y+BbV2u8Ql7vQfKyAx6DutcZMDmN6XDWIZiUpJWiibc0fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749122394; c=relaxed/simple;
	bh=U/GKp6SE5JL49DoLUuGCMKQHR/vQ6/A6QTEPbWkjZVo=;
	h=To:Subject:From:Message-Id:Date; b=MVa2IBFyaFdgODo843+R2XCamexJpSWxtF9pC/FLcN+TN7PVjGQISJCJ7SVD7Pck4mUrqDXyWAHghn3rsok+dK7B/QdvsMJ77l0BZtmXAMY4toRBCYdATUZZ9W70V+Nj1N/RuZHqfxkuMt4zntEBH6V4cIkqWQ7WoEjnT5AxUVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNoXjHsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNoXjHsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B30C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749122393;
	bh=U/GKp6SE5JL49DoLUuGCMKQHR/vQ6/A6QTEPbWkjZVo=;
	h=To:Subject:From:Date:From;
	b=tNoXjHsUFGnHvG5LXNGMIJoVz1pDaaUKnKad51uoyUgqoExcVge+O6D1ySogsERZp
	 Bty46QWdefVyBcc0fiLNM8/YT8aJ/PJob2UiGMjA/THEn3OmooQNBq3P6wyjmm+AjP
	 ANJ/sizb+C6wNf/JwkQWDm6D8X9ljCUvnmfL/wYfkpf3SgfM8AlwxCe5n1DMQEXNfN
	 4ftUxwBbOeDtG1PGLuBQlqslPxIHNNoSg3Eh17lDYTMOEo08JRhkZSbo5qw/taDX+o
	 Yk8HQvJgVDs+TGK2/C91iF2M7n/gfVCyfT5Yj0JaI9TjbxJu6kK0BaX+wI0nbnzJGg
	 YwgrQ8xt04PVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194BC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912239358.18841.16474766716416524693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e318e686537d925a4c54a92951fd54c03a6d16f00758bf4718055df22a7452
Date: Thu, 05 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749122393
