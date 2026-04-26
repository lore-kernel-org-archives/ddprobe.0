Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08FE2848A0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777231054; cv=none; b=YCRY2q3C7nmFJyYffLBLFRWuytbZHYcNXYqPZyw68Q3GxRqJj8YFY91wfro24Jnup8zIa9zxeDtZaWwpE1hqgGAjkIFikSQlfpZhbC08HKbh19XgTntRMZO5Hh3lmAwZPEzdUQGVigpuysLY74frii0FH8IKAw67ko4jJ7ZLk8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777231054; c=relaxed/simple;
	bh=P1YSW6kaikhNM5idZWGNxKF8OIiDPnq4/vjzwH/TBwk=;
	h=To:Subject:From:Message-Id:Date; b=d3InUYUuCOfbm/CGkzw6lOMPeCgUoTeR86Sh/ld3cCQNeJvnvpKt8YitSJVJuJG7O2XTovrwDj8LUeEAelD0os9vZOh4GPLQdbjZIPeW68y7h9tKMJJgVZp/fWwmLZeLkMYcES8ftPKGLaqnjAU2iofeLgODzZiTDWpBIUHmC1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9Dtj/cT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9Dtj/cT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29A2C2BCB6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777231053;
	bh=P1YSW6kaikhNM5idZWGNxKF8OIiDPnq4/vjzwH/TBwk=;
	h=To:Subject:From:Date:From;
	b=D9Dtj/cTFIyW/zhxSUCBNzR/h92hV89VQfp+nRk2BFcatap+Xm5w4ZapixBJFF1/l
	 M1GgvNzO/3awTeG5KVxwd6Q1h1w5+spMssKod0hFqayGMRn8kFOvQO3HNGcLTbOwHW
	 oxRGokCwFzw6NHGBMl8VSnzcMM/o7JK/oYnocgDD8gyW+40IMcyhlqRYZ778ynS6/N
	 OZZLV2XLtfqcdyg5mKBfCUPBUqW3qPNxIWE0A6JOCSTQytsxA/MiSFCliSQ4XThRyz
	 rwE6Rkhi+pFYXwwaf0Ax8e6RGaRiAiAsA34l8tn0zjIjbihKxefhIIWbFbhgtpPwRS
	 U5rS+5r2gCbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B066BFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723105368.7498.9500359951387474662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982fb8894bbf2400354aeeb6fa9372553060f881dbaf76ab12f53fb2aafef110
Date: Sun, 26 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777231053
