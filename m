Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AD72F2A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84169C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673625687;
	bh=tLXGbhi2DOMDA75mTdjwvD/cht70JixcZisdtrYuNzc=;
	h=To:Subject:From:Date:From;
	b=L1o0CzXzAz696CK66HSP4R7lThTPIr5jdev03hXZBbe17oEQdB1dkN+IBkDKWHlm9
	 TAT5nldzc+NJ54sPhyXLXcjyHKemcEijXoum7Xb48AnaoXUIIJhYAIj7auWsrjPslF
	 fdiNwiNs8ZbhNurll1TYjy4C9mfwTB+MiKbypATgqevSxvnCfP0DWEudI01cCmpuI+
	 CnkkOR9/U/k3BcmrWqSoYITtlzR4XJOih0JgcxCuQF3fphArQKd8Nr/jjSjdWT9FA4
	 Y0k38sOy8pGhivHljz8lRZU5tp6v+/lOX6qcBk6PyuYX/AGx8UE1zWGR5kQqJBQhss
	 XfYh09UtqCsXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F4EC61DB3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362568742.28383.7970891644313982918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc2121f01aa9c7178c4f6d5a74c3df8c617a570d46ecf76d36b78246723451c
Date: Fri, 13 Jan 2023 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673625687
