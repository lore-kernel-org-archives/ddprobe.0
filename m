Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B0A437112
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783952914; cv=none; b=H2uhlX+d8vq/7EwjejjumAtMmDM6YUw0bHOUmBPiEBaUjwKCTsHoGJbFSF9cHcsLYZW/pIecAQXmpfBf2O1lLBwlEiCX41nEHqDicKlJHMlfJRqKBbXvmgrJiqFa+jpnoDuDJHJ2Rx2XSHnhUC9qkvKs8C1J5cNKcs4Bx5dcGWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783952914; c=relaxed/simple;
	bh=KMhHwfYm5DCMVlLQpGh8TRlU28kmu8y0Yp1LGaDJQVE=;
	h=To:Subject:From:Message-Id:Date; b=jiAWsuQmzH41sWbzNsgRwNXQZWYRr8EIRltzR70ilW3MoAmed/4fQ4gHHR0dMWDeU5Kp1wghrHAm27XrXjnGlUiXSEmQ5GrPNP6eUJ2EvOEdy7bpWsFwvuwUDGGa3EYOnuyrIxWqzvlRwK96CNAivuLJF6N/M3plseytcsASXeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXPdn32w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXPdn32w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4BEC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783952913;
	bh=KMhHwfYm5DCMVlLQpGh8TRlU28kmu8y0Yp1LGaDJQVE=;
	h=To:Subject:From:Date:From;
	b=hXPdn32w1NYvcTrk3gNKTR8ihcbBloCZBnY9Yf7CB8XrHmIC7HTeepVUC3Vpq+cIF
	 /gwsItDj9YCdVuRmE3AZTu7icyL+OM63i56JRKPmkcntrwJD3P0nvjIdQMiff3Jdlx
	 5JEOF5HQxHocgZgjBAFNILAoXpjyoBGZuu5xvFIX4LvtqNYcYxpIK5ZsjhZbto/oYk
	 hOuBK9e7yF+LYbpgFg0OnhA3iSadFEuRTh6MZALSgkUyiy73AJYoHXPUS7e0sDxPKL
	 Ut1Atr3vtT7tcqEqOBalUjAuMZMph+ysOEO34S2/MAQXLkcYCMpqrE6q7fLvVFvyYJ
	 gJzNxtUGMuQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAC6C44509
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395291369.4965.1319010460270496351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9101c2fba7efbc21210e5d5e585bc5b7502335f943f9492fc78070709c2a824
Date: Mon, 13 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783952913
