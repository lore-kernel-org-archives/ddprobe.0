Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4DE1AA9F
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 21:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F05C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691185988;
	bh=rORK/msz+yYv4a2brd3nUAfARcExaPnllJTeGGtKqss=;
	h=To:Subject:From:Date:From;
	b=MIqG7m/Ft5fTOFN0C60dGgglDll6fVXQ1jDO55NnIYtG/JdMSg6lLssObx+/+F3HK
	 a+Jgchh+EYxAMn5AQ7wbZT7l0pPo/S5TrphN3IjKC7aI3L7uM3lvPIzi3GFBBuEiDh
	 oPUImljrXGDft9EbPK7FXdKG602/1/oi3N8hhiOotfXR/j555PuyPYSRu9549kb+n0
	 U3GUJMwuelDxOLinG1UceQsddgKdQiEnbI4HYmhIrPBlKO38ERb5ulMza/T7nrjn02
	 nTvRWx+ryQrBg7lIU2tsApboEXt78L1FrNcvoxqIITvj17mtXJ6Y+RAW+7xkLxB/Z5
	 o7PsduSKe+kFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF41BC001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169118598870.22202.5461358048365609676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4800fb2cfe3e744ce6dc59b039d21ff002a55c29a8c2bd0a9b7c4cc0f909bb0c
Date: Fri, 04 Aug 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691185988
