Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2019E1C2E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69A5C433F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673157687;
	bh=9hesJJlJkySVH+f9AlTKtBJlaV0aXooYARtRY5DNzPs=;
	h=To:Subject:From:Date:From;
	b=f5+fSniV+vlmHGa3aKoXKRqStvsQTbl3j6SweNbmGXX0gQqJJoFJdXTiDr3gP6YLi
	 ZNKjEocUahjanYK+7W63NxNUQBQH6lGlJo2lXOFGNEheSJQ/OkXRRa7xifkfA7XUnK
	 313DXjdIZ7Xkdj4YBlK4sBthP7RyrIfli8wu7NzITaVf2LuSsUIuGa4fy4eKKCwS3Y
	 eA7wuObq512FcDetdEVWzN4t8zZZbNI6bodNo34PneVRgDwTIWCB43A8OHhFxOUlWb
	 38LOrIH1EN0oCJOVj5DCPbxRlZLsEceH8YjXh1VxzNw5PERWOrwAi9z3neaVpixi0P
	 1+uVy2t02d7gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0ACC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167315768758.17288.11309456251839386500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5521931cc224063474eddd84162ae87be67fd83ce894521dd11bce560557f68
Date: Sun, 08 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673157687
