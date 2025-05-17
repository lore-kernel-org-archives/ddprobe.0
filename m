Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAA384A35
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747519794; cv=none; b=UhWvV3KgZmdwu5vAk9K4+HPrMG81kA8WV2O8ofAiZu7gsylF26F0BwT7L+ZEb6wb1jJ3CeKLoyzUt3wNAsAfNAGPh8SzY90bflTn+ADcuqAu86vXClhKZgThHYIww1/v7XBGIp/FDC4jJUmQni6EufvJciO0J2lGpXWfBBJ84gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747519794; c=relaxed/simple;
	bh=M08vEMWfZbRq1Z1RFC7kAx7JcYPDfsaWGXhN6ebfUvs=;
	h=To:Subject:From:Message-Id:Date; b=YqcLyaV59xGj1avkXPzXzP4bFn7pYSkG3XZzV8BaeZJq0UHm9al1caa6gOD4mYCu2C2YrnvXG9Yb9i/4dRYqnJPYDZW+7WeZRrTWN7pZme29RT+cRhT52i4/ESfRtXVsOa47sCe72JlIwdp/VQZqp84mMwxILeNNpayDB7NbeTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rm+d6Glx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rm+d6Glx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7807C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747519793;
	bh=M08vEMWfZbRq1Z1RFC7kAx7JcYPDfsaWGXhN6ebfUvs=;
	h=To:Subject:From:Date:From;
	b=Rm+d6GlxwfMCn+0vbtmuim+c00+QUHsBodqi9wIuGxKWUi+Jdcybs1DKwuG2aOQu/
	 YLsNVol6i8LmB5/VXG/npwjnIlpc0CHqDV/phtNRRHGIq95ajIdwRMBhbxGNCLXZCf
	 JiBn+1tN0hP89b84glcd5XQ8wqafppfu/Iy2czSOXkEw5CJ6FW6bXfOhALjS5/OrAb
	 A4i3uV8TX5+Yu58TYN2q+ftSi/A99p0A/w7ZXq3+7Y7lea7fUOeNKtrHnrOSCjs4WH
	 CQdrzG6B009AoE2FdG8uN/KPhpJFsqzoGmE3V5TIrHe6Y1J0aqbkggk7aSZdsFA0sT
	 FP97MJE7l79Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D02C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751979358.3531.590860488499522797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4723264e47f926ad2ca3fb6bff8244e7403982af668a609edcb9e23cb84e4cb4
Date: Sat, 17 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747519793
