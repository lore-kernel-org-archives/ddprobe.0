Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDF836F
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 18:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02329C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 18:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683743466;
	bh=0GsOVsLsI3fIkRYojZZRmtlM/HCvmCueKqZcusBiamI=;
	h=To:Subject:From:Date:From;
	b=su0/h7ScHdhP5n57toMaMQj79msMv0yJU+jbJ+U0Qt8qwx0PoQ5ZGWaviaEK5pTpz
	 yGYPPqZoTzCHT8IadlnRWqTi95F++FMBHH0ebndF1MwtrjN+/WZfMOXvnKA459Y1Wq
	 ihriND6n9nlxOdkrRRzWd10NCrgX8VW2GtsV9j4awb6u+XjC0sE9HA9z3JCs6W+pHP
	 tCIQAydLDc9GZjSHv0gyEYD2/YLOMiCgbCBeByExc9QuIKeui98GNean+yFwgpjbWR
	 m9CK+DE5NlxeazaSM/T8JReqWnJDrRmE2EfhRfTn9qDl+p6oaGGtwlJFld4J7FFCL5
	 tgGPqL+vG+VPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF8DC77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 18:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168374346584.9573.14435817158290851279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bd5ba33477fb153f64f5c2ae1d793148818950b983d320f579975694057415
Date: Wed, 10 May 2023 18:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683743465
