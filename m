Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B36320B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C96C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672951287;
	bh=zJAq1h8vCQ/5uBfLx5hp2xzGes3RbKdqzw65z0ss+sY=;
	h=To:Subject:From:Date:From;
	b=NYSMpv/y9p6Dsl8w4GMM8f3+sVq9sh6tUbW8KjXRUGoJJJiX5VF44G1MSo99sIDuR
	 6tjTYZbr+D43PAiVgba5IT4ZrC1/PNxbUUGDt5m98zH3Lo4HKzhQk7HSCunyfsGVzD
	 331NMR800khOO6i/9sGKE3rerMxgv4ZKRgI2XdCf8HWfJNsQPMtXADiMHO+rrBNjs7
	 sCyqq8LygiiRfTBhba94t2nsVelWVfCl8SyITyTzKvPsg4nuJBctRVbS1FuGuZQjFm
	 2jfAEHhLozLQtbm8oVAFmRM84VmRwO/fvZE14w5CzhYnO2N3H2DmsyPK7of3ZcsdjT
	 1beUDMfodLLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634F0C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295128739.1645.5529127210514636070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07cad7d429882d6343238ce1bf211cb92e41db828bebe57079411822c71fd67f
Date: Thu, 05 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672951287
