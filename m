Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3219B1D5174
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760336394; cv=none; b=BxmxHeQcnD6gNpZHoIE37UvE3jDLSSuiZLa3b6PW9KJ9Ug/+s4r32s/di/qJzgCF1vHXr3HnG99moBCv+Y+yRR38odbNT9aXqwhEI959CFWBSlmZZfBD9MXlMWugHDw9j905kbfe0e+kCrC93qf9t5jj4BMzwMuS1pMvZz+XpAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760336394; c=relaxed/simple;
	bh=IyzSYyHu7qz2l6gPneYZ6tpg0O0lqjQJvXSYO4Z4F4Y=;
	h=To:Subject:From:Message-Id:Date; b=dQiZp0K9Q48/CWBK37D0sruZo/snccnSeVdlxoNee31LUGiUA/cKnNfO+Ebx4c/Ist0dibMbljBOYvalldGKY+w7gInYI0+jYp0pYK1XvExuuqJfmCCqmQ1CR6KewR04Y4Jn8+l94k9nzQxCEnmaarwiGqep3OZ/9DUoNYqN/zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgDjdSKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgDjdSKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBDFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760336393;
	bh=IyzSYyHu7qz2l6gPneYZ6tpg0O0lqjQJvXSYO4Z4F4Y=;
	h=To:Subject:From:Date:From;
	b=VgDjdSKMcBOTZpR+xa4el5eVsfC5qpKKsc0uH2dR2HcrUthAghLRsWX5plsL1y28V
	 07nvrl1gTuOXalG0Y9vEDQp4YVowflXuM3bpSSJ7RvQk6lTrovQeztsIjVsjMuf4xc
	 5B3V5Rs8QgIaxkNHOPElgdJZZ0Lc1MdkGQMoKZSHFRNmG+rpZZcYF8PS+j5gpGEAJ/
	 xXuRf6j80qWtgQZIcMI7NretFUcLp/Trh8ovou1Azt0Fnv1/FG4/rGnn196KDZTQK2
	 riLLIZhzTgTmCN9EHRlK4KowigeZSQXRqJCYcJ8fGTqJXPCM8CmBaYzgdmtxlGVmEV
	 LTe4RBQ+o0lWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932E3CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033639358.6236.7917610222902846325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4797269169aa531dde7fde603ea925028c1d77aec6dc1052c92c87306dd554
Date: Mon, 13 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760336393
