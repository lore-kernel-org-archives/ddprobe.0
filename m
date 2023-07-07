Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C13363C9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 07:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC71C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688714828;
	bh=//6nlMH08/aqqBrm8Nx7cWxNDrOdthf23XRWaEzkchE=;
	h=To:Subject:From:Date:From;
	b=dSeMDKXkzBXTX19aZdlOpYEypCMNGe5wOf9fDd6ds/XaUsoSosAF7b+XoDx7oDR++
	 5i7oTGlgNU2ni02ZhITOavBtXmO6LP4HokNHz13ilz+65nn5NmScGj45Ta/SRm+KAo
	 VP77GgxDrQ8pAviY48NS8YzDRKnDQW7xo+iPCDDjYOJWJv0yo5Asg0pkdPLzvHWRcY
	 +UeNUO0pDFluqEYVMQ8cIzST9Oj1nifeIPOp2Fa4F0ZH4cAnPDagjVadaBMz1EweDg
	 rx6VZIfwIL4ZZaQUQCSAa4+of62HnpiWR004nzsTBwKTulkNlSz0XZEQs+1ksFhTvj
	 i1aqdtYddDkUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED34EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 07:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168871482876.23131.17865524733156678900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26f5acf3961e962cf238e4cf91831cfc078dec6d2b85326921d669e55107622
Date: Fri, 07 Jul 2023 07:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688714828
