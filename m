Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A707A94F
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747720194; cv=none; b=fO34VwQXBK4YTuPeMkY1M+mv1zphsfbZAp5QPtKLGSTaw77NGmmUM5wXmYrHt3UvcVHVG91l/PiZuPstkb8MgLGvxEKkGnTn/Blnn2c9vGP/sYvHRh2iNhUQri6Ucd/s7w9SZekrFMvut0ruPJp9oEEhX1tmJXa69brMjIW3gKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747720194; c=relaxed/simple;
	bh=o8N/SLt+embkTh5DawmkhcLaykVHgUV+O9jHqC0Kq3s=;
	h=To:Subject:From:Message-Id:Date; b=LrfWn79YJmvOY1UbQZvZZP0yWabKbd72jd/IyIW7xws6pwGMG9j/qzYwDL6ED0ASs0ozbJIe5be52SC84JsaLqg2nqpH9JcwtigbvS83pUNn08UF+sHmc7FLl1s1cHXRidVp/kAOdUtWuFD0IOTa7I2ruHMRAbm90iBV1rZ3h6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWD+Syyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWD+Syyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B2EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747720193;
	bh=o8N/SLt+embkTh5DawmkhcLaykVHgUV+O9jHqC0Kq3s=;
	h=To:Subject:From:Date:From;
	b=rWD+Syyx6j4nrqfkplmWY5Kb6PII4s8F6WnwwRzDZHhb9Hx/jyVy2B54QF6ICWIVY
	 A367juw7+fbgLdh+om+ce+VDvyfNBYJB+CbrYgNDyOXfBWTdLvVa2y4wvASZqTTAgf
	 bcAIpugR20e23Ad1H338DEv82w0s/wKALrBhDlovPcnIKQFDOmbDhWQLxap+RUfGed
	 gE8sgtdRPIcPxQIJq28atTGU8epaC/31iMkdl5IfydeIoPsCYFWJ8TrJmS58nqJZc2
	 s5WtoKNz9om+0/f1oNfuFQp1kI+HQBJO8HtXNpN8FNdIPt7bWDj8S9T2J7oRB/7WPO
	 ROsiRoH1VSrEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1C9C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772019357.7195.1458910624550957594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6554515644ebb17f5f8a52ed9fd266f2dc25faa2bb294ab1bd21974dc568db8
Date: Tue, 20 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747720193
