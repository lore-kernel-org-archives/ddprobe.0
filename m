Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691702877DA
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782664114; cv=none; b=UP81aVez+7zHteyPEPLFITNJ6k6T91u0e1PmDNEbMevuNQMvuibd6Ua5eD4JfvMsbKd6BwuoaxdIzu5DMO+3X57kjLg6nk4MXGwKvuJ4ROQoqFRIEa+onnPY0272KHP7XCYlhTD7X5G+UQN0KKcp02nt04HRbv6TvWNtFaZNutg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782664114; c=relaxed/simple;
	bh=PNADQAYxoNtRogpgcklM+NNQHSQ2L4zj2L8/4hJyQMI=;
	h=To:Subject:From:Message-Id:Date; b=HN6NenPYHCIUXDzDLMqS8EqkJ4542G/3niRViYXvrVF3jDZ55FJEbKyN436knZdERV6PIPZIXHN5++VK892AlV+pW3ye14A+MAjt/eAiHkr/X7YSZ6p1QYaQaBVa8WcELq6s2MjgaKmchQ2j6pICuo5XD5jltO0J0kKUGg/etBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrBtVz/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrBtVz/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE97EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782664113;
	bh=PNADQAYxoNtRogpgcklM+NNQHSQ2L4zj2L8/4hJyQMI=;
	h=To:Subject:From:Date:From;
	b=MrBtVz/h+KVCLyvxQg+bLhgo/Un8sEX3i7oZHFW1upxxrZ8kiBBrw7b3RMecA5Iz5
	 RFzMS6Dv+L0QZNMRPFVlVsdhCD5t46xczykKu9/n3+Fb/okFK5Re/sz8vIrFSkipCU
	 5lQ13s+S5PePgXfmNiAWoXRWSjBvogIUfKoo3JmHRxWV1w4XNIYh/9V18ul1DYUxra
	 fBH+yM24vkLYM0RU/SBhtl04eMz/nNdR9Jd0qVnJDa0IzebzkuSKKxEssUAId1oCRq
	 DAwcBIUEMF0KEjPcQMKNEVmhivbKK2cmb4q2RVtasKVTz9Md/uvuBVZlGwKExnY7VA
	 sk5R0tNi1fsAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E4AC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266411374.26044.18142625220758542204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102ac515338697795692883fd62c45aab07955bb4477dc3dbf46f5853bfb0b61
Date: Sun, 28 Jun 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782664113
