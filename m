Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3432D5926
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774684494; cv=none; b=r4ir08FYwRt0q+aFklAbKMmnwxnR7V552RmDFxv7dvLriEL0to0p19ZlC1+S12ZgIeHEL51qQFQ3R9WcbRSm7dPP24mGOi5gYUtQzrlYvslMIQuhZA2VfR9zmZ5cwKqK5TzDIRnJnXV87WwrAFrkcEKbUpo40jrbhYz5gO0/6dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774684494; c=relaxed/simple;
	bh=nkc++12DCP3pWPbK4hcI79S95z5ixJIZ/xa9d2zsr80=;
	h=To:Subject:From:Message-Id:Date; b=mX2MEKLqVJ8OzYUtmKJsN0rLaNTU1b1DniQbB0LYYtziEqJtPuFlY5VJiAQxY+kOxouQmsBuk6KO7D5JpmJT/cWK6n9pXpV2OWUotDv0T3F9YHsKU4hl7YIMuNIiOfeDpkD+wqc1Pf9AffnAz9XlN9x+zfQGJs3NaWyjyLWZcs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOPU5PZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOPU5PZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEFEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774684493;
	bh=nkc++12DCP3pWPbK4hcI79S95z5ixJIZ/xa9d2zsr80=;
	h=To:Subject:From:Date:From;
	b=sOPU5PZW7V8n5kebiMCPPGVbHh/Ivm8t/Cq6kbkI7LHyB/SXcax116M7OgWNA0YhO
	 9MxJu8MMeCGXpPFUQ+4v0qnWCkKDmb1GtABxaYsd+/Bk9kcAVUjKQQ3OflczLWg5Zm
	 X3Qo/sfY9JuKRYlF0Zk7ATW/r3LgNd2gnGQqQC5vCQUS571WQJ8ZYCfZnTUAyjmXXn
	 8cD4TYxqp+9yS8/1GJEYPuvI4L+eF4QZ1qOHRc+bX1k0irOFel3reNzxb7M5jrd575
	 dQg0q/FypgyKg89ZkEewaz4f5QdzI0rde7xYmKCvjLntRBNd1vuFPftMYg7aY/6+On
	 KnpdvtBDLNKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C210BA424
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468449359.6806.8755300121074356847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc96d89e27966c6a0e6c632a9bb196dbafa1356422024cafb726e0e66d71bd42
Date: Sat, 28 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774684493
