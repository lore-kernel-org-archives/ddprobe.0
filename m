Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DFC332ED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784994034; cv=none; b=hEsmkWNAmLLHdN0aRcnCulvvvNzmapnsCQIYrEITAyswD51jtflMUXWRiQWmiTEV/I2pbUJ/JTuMQ6EmPuWbufPl1Tp70S4wNFRaDRK7uECkY3BHFEf/ZBPM2qTAy07zjNzjn3LwAE2F1YDHag2Xiog9SuXjc9HRO9WMriLIUyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784994034; c=relaxed/simple;
	bh=ZWYhtlBe0Wm+a3V5uR2G+NcsBn58pUz7aAocmoAud/0=;
	h=To:Subject:From:Message-Id:Date; b=t40XpC8JeO/uLJ7WRZprlalENxBrjtciCirzmSgz9DWSHRuSfKK/ejOExrwzHiSlYQQhsVBhdJzr7OpvHz4F2SZLwEVPfLXM9A5GKQQDnVbbTwSil1A9VH6PXf2+9cfsIK/1Oams9SOwU6pQgMGZgodzrS6bwAXKNG5rNoNPyOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVNAXPIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVNAXPIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9EBC2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784994033;
	bh=ZWYhtlBe0Wm+a3V5uR2G+NcsBn58pUz7aAocmoAud/0=;
	h=To:Subject:From:Date:From;
	b=oVNAXPIKk0kQTmTpim5698cspuNZJqFKgVuETEKpwIp8GGkSlbSKwACwcSLF/aza/
	 sne8HiU15YYNGGb/20/EHD5w6ULsnu3wYYjc/AoTgQPtaRl3khs3rqdqPIcN2O/p+2
	 9MIzsWjdWM4S6FTstN6q5eYYSHf4f7zn7NgxIR7wUl5lMWy5hqHIsqdJ5T8UIDd0Ve
	 y4qPteDBh06+eT9MLe4RU9ywb8in6L2JW5s45cxPw6MLMwBQP2DtYcd5yagkJ3K+QA
	 8M+PvMCU5npMDTbjUSllePTSvbH+ZyqLxW1YxTqpMwxqESS9wd2pdbpKl4J34bhrFS
	 ya0nebzIjlBqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEA6C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499403368.24822.393128962271795559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e57d567a88d210793aa3859ba1add83ade0b019fffe97d6765a79a14e90bf9
Date: Sat, 25 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784994033
