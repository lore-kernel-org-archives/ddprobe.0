Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624C78C12
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 03:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5M452nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E94C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696821428;
	bh=LCoZWHy8v2wz6ffxHqnkrFzbBQyy7iZsGyKwRBLX8/c=;
	h=To:Subject:From:Date:From;
	b=K5M452nkojNEH8wmZCO3BilchDIS0/roLyYslksLDBxsncOBJH+F9aVcDlS9Q4oX+
	 xMAiMm+Ljz/QlwmGKiWC7bnR4z9PyCGSyKu3csUrXM4vgiLp3rFf9A1DOPS0w4N3Yw
	 /wu14VsojQ2BDZiR7hIky8RxkwuEw6rQyK8c1XbocN/M7JcCQpb0HBGlskNive9BrH
	 DQsoxt61MUT63O/5DZYTu2hbav0uRv6JFJiSJsQDLz7G7IYqDeoUjsqSXggiEH1kSW
	 IHLJRYjWBOyFWW5LU9pJs3BTRO73FZgG/X+akmoyOpDnrinx/pyvoZlVRytkAQxVfh
	 raYREyKEogPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56DE95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169682142871.12776.11648696151763587685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7452f595953bbcf3a1351db9e99f80d91d44a7da351e3ac5437a4408da6a70
Date: Mon, 09 Oct 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696821428
