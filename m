Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E64A947
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4MJoCi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4E4C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699256896;
	bh=lRD9HDyxbej2m6qT71yoRr8tebsC/YVtYP6B5HTnIWk=;
	h=To:Subject:From:Date:From;
	b=p4MJoCi4cXK8tnFlA9549DvBU7189m3pUgdlg1DfX7JCKcxzDmOvSdeLBO3uMCW83
	 kvbtwlEeiv8CxuQdHIws6Fm4sZfntg7iEP2DF42zN/xJpBXcLzy1bZ+isbZmrj/jFQ
	 i4oK4bG6HIfkoCxhElVEGaAxoKOHY75nlSqOmXlnVjqmM/cpbPkdjhq0ptO1STXf4H
	 0Az3MTwMCeMVHqjfDqg3Hec2Vd/yEyzyZRt83Jji4oxbtI+FvPizUJ7cqYWx0tGc04
	 2P9Rl0opEoWjA1WlR7wn7qCQH7IPNWC1yCgY4HLpKv8rL49bsdB8Oz+6GKaoGGwqBn
	 byimJ0cbcRhLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7654EC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169925689646.11488.14924156096972096801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbbfdcaabb48cfd9efb281bc55b362e0739e92808413c96e61f50ccf873d2a8
Date: Mon, 06 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699256896
