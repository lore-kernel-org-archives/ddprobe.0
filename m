Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C10EA9
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69FD9C433D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664416253;
	bh=Mi9CeGcroJIzQOK6VkXt/oBnaivF7ZyO3Zs9/MLv3oA=;
	h=To:Subject:From:Date:From;
	b=D/aJ7rnye7ISYHKUtIbAC2+jFEFZREWY2/o21nkBud6iHqfH0YcNKwA83CFQQuHK7
	 HQEGDZGUCFc6TAlQk96lcxPCBvc6yHUT83WM7se4okjyFcbdmKc6OviEyzLU7esz5W
	 ZizhKbEwWp9YDhixDmrtq+uw2o4rr9pKaCgqIdIPDifI9w+sSb6b82wTaIiaygg8Ox
	 uGFsZ31EHgEPU00jMS4Hlpe0wYc7dApTtKbvt43sW5cr0Siz0Ykvdrt3UR1d4uR0Lw
	 Xu9+nL6QZtr7tVf9aQ7xd6pTeEW2Vhy1fT8P3WsaJIcHaLWiDyxmmpcWLNS+Jg1XLp
	 Ex1eRQLd2TByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554C0C32771
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166441625334.19037.6506308647141148551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e089e986f95b10453fae3dd83ec6dae27ea3a8f864ba86221df86acfd1140a51
Date: Thu, 29 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664416253
