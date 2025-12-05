Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299D125DB0D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764964374; cv=none; b=Ct0+WnF7WZkGgM2cNnhBGt5Fj0dv9IsBvgqFJivR6eaMoz4MQ9ggx/tpJ8K2ojCvI88dqiDPTkAVtO1m4RhUOQbP8J1QD/+pKuLo+KHIIC9SqHwSXW1kAtezpmSm92ct64SUbjJBXyDDLh/YSj7SwuTOVQXNNnlfm5IvPJmhBuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764964374; c=relaxed/simple;
	bh=8Tsjm4pk9wWeo3puLlVrb7YphIUw6DdoiI8D4tCrk/w=;
	h=To:Subject:From:Message-Id:Date; b=Gu/Lmgu7K74NCZ3UCfo9VLJE5I0kGXc7K1yh8gfLEFqQtq1XtCNPSIXq0D6wxDkH+aKjXynFAE3y4kuFwSkhQvnnEIaGBCZBXe7CWf2U56qpzZ8nyWwSRyjKJ7qLXdAgrkijorwvchNMds9KYzqg8moxLxuN+z8vFquSWmtyLeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFXzQe0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFXzQe0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CFCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764964373;
	bh=8Tsjm4pk9wWeo3puLlVrb7YphIUw6DdoiI8D4tCrk/w=;
	h=To:Subject:From:Date:From;
	b=DFXzQe0SIIukXGtpp8Ia0kSAq/tOd2Hlkz91vHJ31uQbuY/6m44NkvK4p3av/yZcp
	 M43A+8YXp/QX+t8QpJJCirRCsovPWfJCYGcKJao2PmOw7uBo5oVVaG1nmyrYC1J3tH
	 rNZRviiPwqDdd4OMkNcD4MEG38H6rWwtRy3vFISdmm/1x5Iq+EiTs9o6M1N4LeECli
	 pxROtFPCUEALvWGiuays/BrekQzyGcQitLeI06e7COSAi58KTie5FMksqTwvmPwmdK
	 DqBUbTdxSoR8PZJsDX8vwZ6b9Y3mII3/ICXyuKPMPjVh8ZVn34rPYSuX69UUGdExUK
	 fbG/o0AZuGmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE8D37492
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496437359.24476.5523268200912187483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679ebdf4a30647183dab11119e0e962360e6ee399b903c2a663ea999a9564527
Date: Fri, 05 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764964373
