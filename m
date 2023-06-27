Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6658C79F2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D752BC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687849388;
	bh=qXIV3m8K+sL4Sdc4X/tzUd5r60SnH/eMxdf/sp1QCYc=;
	h=To:Subject:From:Date:From;
	b=cdZ1DxuCyvRgcydpV+SDoOD+cBL1OIrtt+ND+WicK6NIkApElqLnJccsDc8yaJ9K9
	 iDiPt2+Tf+uYNBvL0/bwUeK5VsmrbyW1k5BeGJgEYF4UuQHhlAqDkf+bEIge7Iy0sU
	 opKYtS6JRu/UD/sFHOrd683qduVJLe+6bGy1fMiSlZAu8ijnUspx/RQpbfUJiII0Xb
	 TvwLMDykRldxTImeCV0jdxhIY8yBdXfPDI4Mtm9dqkEghc+JPAhGUCILhuxxGO4QQh
	 Kt9iADNOXZQ9wPQsIbI8iBr0/xQLjRtC5CQEMddpMXOsfofmF0/cVi7kbrIVKlUjvs
	 RjktGZ6n8kuZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B36EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784938874.8648.385967830200700140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800c63520e1cf0f25e9d4a5e6cf513bfa58685891ae94f6c6e786d685a37fc1f
Date: Tue, 27 Jun 2023 07:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687849388
