Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6AEA28
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E1DC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688533568;
	bh=ZknJxdvOz7VuUUHfK1Vx94NtUwR9WZmlnuQiENXH8jw=;
	h=To:Subject:From:Date:From;
	b=IZvIO5vLYDv3WqnAtHoN8odH1w4sKeXmPgoWMEPa7lbVzFRmDIcM5IBcDZGo+dN7m
	 cXUtuijUUV/Zpr1kRFbkYyUf0cMPqdgWQHHrG5pu/07mekjKV+cmDCCLqSqltne0kp
	 zRigh/MAbFu+nn4Tvgk3SRSw6dCmHrvyKaFhmuvSL17CPzVZSE8EpwkbX4VlnZlCTg
	 BXuW8n2f9q7GDTdvUovl8YWoHhgJCwEbSphie15UkZY7mBFTxsmzmrToOgF+h8Y1RA
	 N/336Fey6EaGbTAbwdu0a8quq+fiJfZOCyq1i8xWbi9qpbX4EPI2vIRyz4DZJ3aMNt
	 EF4o7kqaA2JhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8081EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168853356873.4229.15963556734937571400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218a5b31dafce3f5d4e55a4b66f5b36b9fe0c9ef5f6562a5aed6cf1ad455f10e
Date: Wed, 05 Jul 2023 05:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688533568
