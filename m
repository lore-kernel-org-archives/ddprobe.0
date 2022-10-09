Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53011FA8
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF98C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665303053;
	bh=KYRMzCUowuaZvon0bX8MKyp9HIhwI7rBfG6MhZviQGY=;
	h=To:Subject:From:Date:From;
	b=DQqqAKj5op++I1s2FrTG7kzTSlBOYPVAByTmfk8PKr82gQvdkzBjfU4odHUiN1DDi
	 dWQKlhtQ7tT1sq2Kt+ywZCX8LApIgGSZ9c7i05HZM5xwffP8+Tuj6u4W90JZ4WfR7J
	 V2x6S38/e0nbyf4FiJ+rxoCtOuaEeJ0iuZyKLbd+LB88DUJ6vw8YaD4xcTvLJAwRzJ
	 HP4pd4+V/4LfqRinHUu5Y1ac16HWUwO5U38P1GXdzV8qEjBVovBOa18zwn1yysLesr
	 7gbMSoPxbxOGso0UABXf4soeYjTvcVyFVEWhyv11bkCEwOvZ+CRHwkjRTrq7QLJb6I
	 N/hwBjEm1G4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F15C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530305338.20935.13964008856678017024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e13616db315085a01c2bcb97d7092683718fa7c6319a288962493445bd6cfe0
Date: Sun, 09 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665303053
