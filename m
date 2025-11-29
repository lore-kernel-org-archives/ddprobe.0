Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F791A267
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764452574; cv=none; b=td8KZL1p6p/EW9LjSxcViLealnsJB8BmlE7sB8HDDGpjNxZbd5uHtmyO8xWW77+J0TEBTj10m6uEMj5/t+73pgcqpv1x2/AeNouI+4cRFIU2RvZkDSxFXJzOUgXyNjB3ibVXSgaR4QPTAlZ007gmjobdb/LKnWvZjXhEjBhs8NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764452574; c=relaxed/simple;
	bh=stRKs9W9IY9SA6P8z2QuhOjrK0z3my/e5c44P7nBDU4=;
	h=To:Subject:From:Message-Id:Date; b=CiIF9Lglwy0ybC4Wb8lOykSds0R2sBx2BBLnBW2nRCqRPt0hn9G3CojUufRvTnwxV18WLbjx4hkzgfsM8uGrJldUJ3V56FFDSzYHD8nrE3jmJYrQYuWc4m2DU8gDCmFw+zQiEN0VdzUSNNSv1vivqOoK7HkjpcKD8xy0UQv05ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/fcLMcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/fcLMcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFE3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764452573;
	bh=stRKs9W9IY9SA6P8z2QuhOjrK0z3my/e5c44P7nBDU4=;
	h=To:Subject:From:Date:From;
	b=n/fcLMcmJeJe1JyaaxmWcdGyAjd7/g/2aIlj9XvGtEpYIbO2CoN4QgkWLV8rjztie
	 mcohQcZmd8/Dlys9FnJPUNEqrEV0vKZAQPFoyYvjpJZHpJ2HUWQWsGKbcKG4lmTcAc
	 tBFY3TEnclGbiso2zntiC+ktHRkFYgH1Kqo6LNLn+wKkk4qKkoaohUqm79n3qAblCs
	 ZJCIoQCWiuo7WKqxrh2x0o3H7F5/Lgv8cnMs94p95T2uzPBcxa9FAREx5b6EFXL4SL
	 9lha9NXhHegUaQEch4zNKG0hLPUhKjA5z72+91GTefwLNeGOI7q6MJTo1t9AhLGwzB
	 d8W44HOO2k1WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F42CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445257358.25873.7590076108631818307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22102ab81ee6104f5e29304e2bf30d65c4203e2becddc82afc97ce5b6b372256
Date: Sat, 29 Nov 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764452573
