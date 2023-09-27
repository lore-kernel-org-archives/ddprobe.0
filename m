Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F6D10EB
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 00:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD3BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 00:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695774308;
	bh=N/hsZ18HrqXFFYK9EH6a+5PudC+qqWiL3ykcPzxboO0=;
	h=To:Subject:From:Date:From;
	b=lCDYQ6VkRAlRmUesFukJ3Fko1vRujG8K5z7W8a0xskWqyJz45dTBQrGy93A1fEDo3
	 1sfvB2iMXwXWlkNriPBeQqP6rtT6GlYldwxWx4lalXOLPRqAk7cAmh3DEAKmDR83HV
	 XxurSgdoHyyMOZEv56lEKOR3jcBQzQViQNo9EKWWSedpXM/3LigIp/2I1sFhmyX07B
	 IM1vdcywotLesJEl/FyBEZ3SZ3BAUTOEcX2PoG3zDxqrqhXtwbuhhDRF5GZ57w/QLy
	 HH7lQeOSYNSwZQEnC7RR+RlXmu0mSa9qGvWRp1Sp0TQM9/6n1BV8JKhpI8JQfEVlmA
	 PARcMSFBlJfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1CBE7F14D
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 00:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169577430870.14674.15655792937967598330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8c74d447f741031e70383663e7e1eba7e693a429779d24a83603a454ad53bc
Date: Wed, 27 Sep 2023 00:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695774308
