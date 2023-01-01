Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13407E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89CA9C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672536087;
	bh=tMSwDVRsNqYvudnvBw8VrigI8H1mM3uPZPRXJh102qo=;
	h=To:Subject:From:Date:From;
	b=ijMsSWu8+7cL+ZHRJbxJ2uk+tue3Vbd1SEjwr8bJG7JQZ8Eq0Y3nJVRMWpWgQiw7c
	 BUR4JyXVBdVru1MvTP7LIXrSgGmJmpF15mG8aq0ipAVkmcxz5UQK1+Z8qhJ0m6B6ya
	 qPmzmDS8WZDOguIfwpEyTFb44PzzF1Hu3HggiVSsF7/jEzUtkYkzmbZ266X+rggV+2
	 MMLGC5B1Rau6EuMDqdldDMmKN6SG4ObX1WjmY8P6O1OUjLvv86WPQsdLQmFK9HK4iH
	 DY/ffQB3h3MidBvUT0Q35fs58unzw+pPHe0VYb+Z/voeMlviT8+GM8JIUa8SqqLV2X
	 +UWCleJ4CIdBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB7FC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253608744.16836.8358737871819605941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8f8dba3f1fb5a788c3f5f794068a23bfca43ee79a45791f32f197f86989bb1
Date: Sun, 01 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672536087
