Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA6E13C67B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718722163; cv=none; b=WanoX1nCLXXNO56g4ZvORVzrjBvMyuoFBmieAgC5lGDAd4sWQrNrTWBOQHW/mAvuisCH05zSvYd7iYHCpJ7IfC8g2rr40N5Tza/wfv8VUSki8H8RDVbJoYqQOGMEg7jCh2Z9sai5nYB5ZQSWw9b1T6gyvS3KEoPtJm8xQb26F7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718722163; c=relaxed/simple;
	bh=ByHuvJNUBcYYquNm1rZtQ3jXYgPWfF8stU5WH7YxWO0=;
	h=To:Subject:From:Message-Id:Date; b=XX/UwEUWFfbx/OheyZpRUxAn9t0P0qC8T4JSsAPEuU7Oj09gBCxzYeibjOxRCGnjRax7wXDrWf+WPn0u8DArecmLaNVFrGDLd4oWAE+Q0QX6AMfQ+gQ1Q1htnUiGBo9Q7yiFQUumU3O9Qo2ayVKH4sUDoOPYqxa+0TG+zz7J4EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQVzNYqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQVzNYqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF9EC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718722162;
	bh=ByHuvJNUBcYYquNm1rZtQ3jXYgPWfF8stU5WH7YxWO0=;
	h=To:Subject:From:Date:From;
	b=XQVzNYqbGuu1KoZKu5H0gqkD/f7lDvrGRVD8HVao/qlypZylQUSf2iXIAOChwLXLx
	 Byx3UFPbNmt78MyLlDokUR2ig+7Y42FpCQn/otgBA4qDlF6gwIxoyChjbPaks2T1xx
	 UCKAcRV/I7af2lgq/EEsPM4NLd8XupXsyJJZ1goKDv8oa+IDG9Gu3mf6MQ+xvEZClE
	 MOG7yzOWIINJ8SGzng2mzGLdv+AJQg0EWyNVytDBTpL6arj36amSyU1EcajLaECVPu
	 r/InyCFw7+S0Zb/nOAB12GlQxZprFZtKOGqPcmWGHZmwTtWgiZq838E0VRKCfTkw90
	 Mn4M/4fsdFy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC4CC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872216277.24631.792102157168993542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4a2a4376fdfc68cff7ba22c93ba9485c93c507cec5043b889d3502bf96df2d
Date: Tue, 18 Jun 2024 14:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718722162
