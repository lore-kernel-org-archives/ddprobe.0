Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6F221C173
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762442994; cv=none; b=kanukdhynfANY4jETCbaL2np2IP+NDYCDkVLMVzJddQ30ibHXgpYNNvPXvVtgvbAAgbRlIWPIy2eR48wPyER6FNogeZA8ePYr/a360AT3HJJYj5XW3JlaFgZjLumL2UCcIUXO4dRdjlUzkDL0r2ypl+f+wfp5Teh3yEPTiwQKiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762442994; c=relaxed/simple;
	bh=0V0Ks6ORym+VcGdkZJfDEAsUdRjGNtzsLYbMu0rq8hk=;
	h=To:Subject:From:Message-Id:Date; b=ZUCQYhG5RZy/tgi24zqV+4zXQSOOv1eeQLegcflvnKZrnYE+NJuulIIp3YmvUSmvRv4CAx/z79JY8UZP+nz1MU5vGBxaoLB6bI95MmV+hJDBfCgRLcKzUpXF8TWyoqRK8lHrRu21yqobLVSihlJ7JZU7gXZCy9TXaeFKR1LfvxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/ukhOBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/ukhOBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762442993;
	bh=0V0Ks6ORym+VcGdkZJfDEAsUdRjGNtzsLYbMu0rq8hk=;
	h=To:Subject:From:Date:From;
	b=q/ukhOBuhBwFaYxEUKfYx7sFBvkHLScF2y2/laX+s9RSPJ14LGnztaMFBAdz1tVdl
	 xRDTYVdn+rQhmfIvmyKsRFcrCDJgPXvqTlYOo5SojFginPh/hpV+9YfyaPgrcxb4G3
	 UVxNN6TDSKmr3xPBR3YEpd0gWBi0J3PDIBAggpIV7dYOrhGKU9uZzu93mHcxV4y5iz
	 IUh7wqoHGyZCbDdWfkmte7uexjFZtqy8LLi7R0yqg6tFzcEgJaC+1JLHXSVfKhLdQi
	 VGlxHDFiktfqn7LLc13yg3mr0ocxlY1RL6MtWbCCaFq8kh/23So6E6r74aUFRJIYAx
	 A4wyNDarZt8dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93587CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244299359.2904.6745249310177190955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c269f53249b11ad6ca61c40d12e2bb80fa9f9ee48ae03475fcd680c048142936
Date: Thu, 06 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762442993
