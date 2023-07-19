Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1AA107B6
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 12:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6181C433C9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 12:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689771068;
	bh=l0JmgsiIvBGDoqChyT4A/aTUuserBzSGt5NpeHogRgc=;
	h=To:Subject:From:Date:From;
	b=g3HckexIPRobHgm2N87LR+fWR0v1Nnpu5tNlGH0DkNpl/jxy3t8LDfULFV5dMAn3R
	 dWEWRjZhrj1HEJjmqvlHYBl1qHd4jfJLcrk/T0SHL8PHsccAwIORdLXwGcJwzm2QU/
	 MnIPUs/uVhQQ3ao/Any0HBKP8Gz9omJIV578+MQtV0AaoUFoTQG3ImcNkrqO3tjUGg
	 qkcPGmkU8mDRIFNAgnLR23gIyxuYxlhW58eWkdgYevpJw3B7Ieha/nTsItbLYoWLxK
	 7lSxfeImVpsmhpy/xp7gkPH/sImR65HWXk0fyj6Sk2IoHgWd8y6hvUapVNljtBV7tO
	 2zVRn2ka1cCTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5639EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 12:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168977106866.6056.3744389020670102029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c994c044ff4e060254028911bd0ff69145f09bd774402224d5480f9f5f4c7a
Date: Wed, 19 Jul 2023 12:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689771068
