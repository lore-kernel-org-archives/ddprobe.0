Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3108415B971
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766980434; cv=none; b=gTkB0BXuyxB0Dv7HbaMUTrxLnJ0DHftaMXPZUyPxg1d2ajAeohpGh1cTpKh5hD6nMSnB+6K8cxxvIYnAqDcXFXfEmocyrWameiMq2Kx8LbNGMDjBqMj1vfRc/qh+NeErasl/sp8fq2nmtKU9YwM6q5uOYGtcYGc8dqH/AgFyqnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766980434; c=relaxed/simple;
	bh=9K7t0OkXW0tyyZQePswjZn/Q8I8y4TdDQy/qUEUiJKM=;
	h=To:Subject:From:Message-Id:Date; b=HlsxRrIuSA/scaq9g58LB2e+oaeGrVit53TpngW2A306L82UBBpSd/yZ3iiH5sxu5o85dcXbm+XpbdkLWAb2xvnYgiMAf9bQM+ZyaK/RusosIyHx8CTQNw77rnGx7ebTecFx5QmIQs/B4xAQAv09I06N7tzoABIpG6L7oq3RV9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3cuZMCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3cuZMCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9340C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766980433;
	bh=9K7t0OkXW0tyyZQePswjZn/Q8I8y4TdDQy/qUEUiJKM=;
	h=To:Subject:From:Date:From;
	b=R3cuZMCgS5OJdfcH1mSnGkTQTPSQOA7NiEZiQ3zCs1TYSj/VBtb0uSZETfP/NrlSN
	 q9ud6+u7GSHufT7F1CTAx8IRHCafZvEW+upCgZKqdG0gU7E09hyuljYJDTU9IGdol5
	 HveYGBVZXT3R6J6AlZVr5VR0TS20/LEdjR6z0dmp3BEMBE7c6f8GjeeyL5VNY8WrpM
	 qk47O4rpGGPMJUoD6vdCEPsIqgyvACQKdaxARLAHG5XY5qTc2y9uy0143MTgaOSx29
	 Y07fxYYoYYYX6+DEgL9HOM8GJh4KlBv/SGJKdQwWE2UJMqb+OwLJZRbH7/EsZ49SKu
	 UsZNI2no+csCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97722D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698043360.22791.6361115083578673876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360a19a067cea0b7cc4604ddd53c9cace2ac54cbe5b814505676cab798bf504f
Date: Mon, 29 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766980433
