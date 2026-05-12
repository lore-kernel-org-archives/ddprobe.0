Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2972E1FBEBC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778623234; cv=none; b=OiHYM+X0CTcBhiKI/BpqVBuO8kBuDo/XblpRw9cl0sL/LDsM8b1ypxKBFq8kCR3WTGRZbxL4HhvzZvxvF6vVNzyIXV5M2DkTJ71U2w42cmUNE0wYBHcnk+oP0PKXy90zHhS/vNuNdhydG2gLbBR2OBBN6yG4TjV6+DWt5RgnGXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778623234; c=relaxed/simple;
	bh=AsWgYFvh7D4FX3XKJHOcqTUs2puyUnLXaFUS9GwC6+k=;
	h=To:Subject:From:Message-Id:Date; b=inRH5lFKA4lr6PxgVuIDbRXrsjzoH5zkpShTKRdVI6Ec8lfc41ke66lNWA61aQYYdcRKvhumQIAWBA2zjHyZtZcwsNJIo930zrOR1J3FZ+9jWQzvxuRbH4tqlIQx4/GOIZo7tBN2cW/YZ4iN6L3UG9H5En2aQPIjbhOxlunvG0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNvp723v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNvp723v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAF2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778623233;
	bh=AsWgYFvh7D4FX3XKJHOcqTUs2puyUnLXaFUS9GwC6+k=;
	h=To:Subject:From:Date:From;
	b=oNvp723vUi0cHKV4Ahqo2RmUZTEgO7rwsEUuNeKnV9d1iv2l4qeu/MYS/JfRGxLNb
	 OICTaC3Zrh2zEZatVAwHnyvtFbtIUPc8B6AO8H3/HKrJ/E7hDwFg8EbKLJs/SA0Q7Q
	 Jp5llVvkkwhOgozr0Tr2SgKTt1eMCz3vC/ZGQtktvGl+1bCWL06jPJK35GOnEcGOe1
	 rLbgjZDNWhjEXjre7W0lIbqfLiJvUZvCj7e+wbc7oL9QPWryOnh6EoqFdbDRhZd+4R
	 y7wqGhBjzqiAYAnU3UEehCE3pvdBEbPsckjgZ9qqgoZJAhlBbt+lEH2qkLrKA3Lr4A
	 oLlpIH7X6nWBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0402CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862323368.18520.14366700995851583798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bcc7ac823ad2ea0c862fd0df57c595ce745575035fae4a3ce44d158681deef
Date: Tue, 12 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778623233
