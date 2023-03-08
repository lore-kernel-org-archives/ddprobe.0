Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40240657
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 21:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B1EC4339B
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 21:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678309265;
	bh=9fFk6JfZV1iIjuTaB60MmMDUOCMK+tmRprAq1r81Psc=;
	h=To:Subject:From:Date:From;
	b=W/S3/yW6+ulbTxGo7ohiPqAVp+KxT0XWnreX2RoLpOCcIAcQX8tIBoREBYkilaZuz
	 OkU+Z5/N3lB7DxQvUu3/6+g7JNws9lQSLFvdlefRyCjpZaVnrv+Ba3FU3PWrRAb14F
	 fQjLbS51XF3T0Wga2B/DNJd2GdqF8/Bj6/R1Ui0z64aDi9kq7sR1WThmJFouRt4NWA
	 69JKa80JiZHw7XMYx9sNCBPML/iMWOiEOH856C7vxZBlmETnyg9ySS/78HPEYhApVm
	 n7Ctp7bXCPA32UKqpfP1vvrqUKofekWidU++8ixkXZ2XAK9rLJVfx9Hm/gFWKasepc
	 TBp2WFY0uX49w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD04C678D5
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 21:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167830926575.1186.11951803800657508306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2cad0bd52329fff3027a47b2934684132a659542505d935efcfd631c6ec09a
Date: Wed, 08 Mar 2023 21:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678309265
