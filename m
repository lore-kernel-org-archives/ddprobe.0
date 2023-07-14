Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561C753AF
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 21:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6756C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 21:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689369068;
	bh=gKuTM1MSbyX7Ujj+k/GQQ1WNiJlfNW3HaSWB5d0+YL4=;
	h=To:Subject:From:Date:From;
	b=sB/dyPxrS2QmM+6Up24Rmk6xts7HfFRAU/6rSnFgCBnnX6giYUQ6QO+WH9DpIG2j8
	 EMbDrnLWHRzIQNW8K3SXpoNhBGPTal3ew8VYsEFrg+U7d7JcjSLKca2FCM/nRDf7D8
	 dcqsMrTziwFkdcrmO+FvdyTkoNghKB/sPW5VX7wZEV/oW+H/In39VxtWpjkA2iTK7Y
	 u1Si7uGgQGVEsWBtFoJTUWoquojQfLVbM98+R9dSqPR44lPsffyp37KcQGTH/KlpwN
	 SW0M45XcTalJBtwztG7q6TCtRQbQuhz9mf9a9ORfnHVBguvABgU/Qkb3CqWjXTud7L
	 +XI3o6iKrt7FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A796BC001B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 21:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168936906867.29333.11179634909737351576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9ad117965acea89c350960ae200fafc0118c2ad02841f660e0909a4514b08f
Date: Fri, 14 Jul 2023 21:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689369068
