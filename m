Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B2923A6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799EAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669360854;
	bh=BwlmbJ6meESQteiW4FT13yJgkmLGAxXdW0qCyK/SkQc=;
	h=To:Subject:From:Date:From;
	b=TgEkIMtP3U1tCdsenU6Dago10mSIVR6Qt8ceBImKpHZnSFGopOTJEIi6fZesE6x85
	 /TicxaZyAWsWlWlcbi7SqHnGJ/GQmTpoclDd0X/H5aQan3fvs2s7yGuqua8pE9COKY
	 bytM2xdv5/cRm6GPhTe0Q4qkxBq7g3l5vSQrJ6iGgziKr6RzrSPbfkVZQZTYCikfd6
	 G6DSh8dh5T8N9FudxJQe7YsGk4t8oT8g6QFfWd1kM/PF9a0X2uJdzNtI4VFuSUlC4V
	 pjRH4BZiDhzZpLcyTIDFtO1Bump7Q1SDmqAhAhrzJJML/zCHHVahqc4iQWt6UKcefX
	 M0G9pwPsgqiug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F41EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936085435.23810.6263814214225785324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafe522898b3ea76ef266bdd6cc4e8130d241c58babac26fcb4bd89b61347d91
Date: Fri, 25 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669360854
