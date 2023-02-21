Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3708A7E0
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 00:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B59C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 00:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676938745;
	bh=dePYX24+fLCjCqpCucjIGW96ai5QgmazhVSD9yoOcLw=;
	h=To:Subject:From:Date:From;
	b=kPO3hajhvox5+D0pbsV77tAs0a/JGjNxlx6nKXakNBWLggAycnS1tXrJ40+dJ7XQw
	 gwVZgmyQai93ctRnEcFA37OD6tBP+44VX8RDdASX8JHquHVApaeGcu0O67YSFF3egO
	 M8dmMc/yO+Wo3QiBbQYRKxrJQBrSSCND3pc1MausrmJAnu+i6OjcAniGDMaNLjqK1F
	 mDnFn2V6FnCl6GE9qeqfolYVg5U5Kqk8nqb7+SdZDlVvS1xfziW8wVcY8ga7vIQ7VX
	 LJHIKM5n2IquC5Kdz39Xu3ndXUtFAehtlDjel3uuFYuRpJh/fsA09kd7t5TeOZedI7
	 jkTjC+gUuMqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14EAC636D6
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 00:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167693874578.14434.1587715592054227108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519a7977a53da56e887d69c7ae691eda270e6d5ae6579be533a833396e65f8e6
Date: Tue, 21 Feb 2023 00:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676938745
