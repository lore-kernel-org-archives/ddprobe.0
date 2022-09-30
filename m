Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EA87B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE60C433B5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664575253;
	bh=269tfymnpD5WHzQWrpBhCRFz5s/BPo6l4ljfMIU9VDE=;
	h=To:Subject:From:Date:From;
	b=BtQBgr7JCZQP1l0CjI1xADx4A175FGKHC7/0Efs+N7pGXI8rQaNojkqFOJYWWl+hH
	 5T722/5U0nMuBoBRnHD210LiONIimTKZ6p2zOLcEbtGSUpRCx5m8J7joYXC0PZU72e
	 dZoEXeN2xgBT3j0TfE/VjA7kTXvRkOEt2W5Y0enXvNIHgUKxhY59eA/rgVVqOPR9jK
	 GULmkfm5Z6ySQjdLiWdWoRpVwPHKa0Q3jeLOFvS74WCvgScR50uzs65qMmGpMsOmPq
	 5MbfWX6lG8riY3zhwpBmW0zyHagJCBZvuy9Jbua7vq+AW3Hx5UpL9HYnOEhaoBYdKW
	 /NZKJgtD28V6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CB4C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166457525334.17166.7493007641093136285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ea768591d18488366e8904e6ae8a798d58245e7e54f092e078fa6c748ff824
Date: Fri, 30 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664575253
