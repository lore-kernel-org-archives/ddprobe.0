Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAEC3E2AD1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782491314; cv=none; b=PcqRwL6AjvLrJgT6FhPfgfFvfJMpV7VD1cp5eQvrQoFxBbfCGdIoI8S6jD/6GOTE9vbF05LTZ9jrwhhA7Z94SVIhiRXnvBBv9T9/f51JQYyEwReWVNr5IJD+7elgBFa1pxwkhutJeWitJRkTgF/Z24RoKQzA2A7RkSuGzgWFECU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782491314; c=relaxed/simple;
	bh=LQ51Z0diHFqgDe6KAstY+AJoU/uDZkiiKYbSN387Su4=;
	h=To:Subject:From:Message-Id:Date; b=LM9Kg2mahmIaqDCNd+pBykYN+2oF7zF3DfNvDGXbqv6DGQEz6+QBPJIIeS5uVv60IXm3uERUlF9Yyzwq5Gp1DRQiF9zEVlDn1ysxQ3LnncjO0y/M3QOdejqmBInvfaW7gZtVQh8RYg+LVzJTthNc1e8AhabWUXWp9Ubrv9KHuns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdsK0YJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdsK0YJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3CF8C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782491314;
	bh=LQ51Z0diHFqgDe6KAstY+AJoU/uDZkiiKYbSN387Su4=;
	h=To:Subject:From:Date:From;
	b=hdsK0YJ3XxrbxjgUIV+PGrWboHiWSMb2+3tFtItczznjxTJ00zInYpAB4ugWb82Nx
	 pcIaXF6sTe4wkAmo9S33XzKW2oa0hTKA6QYmfDobAvL8vAixYqlznyDTjVqUJeIfPl
	 94UEAjDLqEyJrCN0ERuq6uno33aiTvyd3PJkR04m/MHbf1M2Hi8jWIjj7a7bL7RC4Y
	 g97QMjMCqqGaJZjcS6GXYmdN75/bsuyURGK72VjlgTtC3cWtnKOa3YOgwJ0locKe6E
	 roXDlp3EZK5UAYumCdShRkoynP1oWR6OGHLDwbYq98Z1hG5syFz4ev1MltNF5SyZkM
	 fAagjf1dft9yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA517C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249131373.6597.7010472222034396142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8857e0ce175038ccfb944a28113f6c2a9ceaedb0042866a147ed061fa5857279
Date: Fri, 26 Jun 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782491313
