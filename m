Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AFD28EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00BA1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678784286;
	bh=Mf5njSPtZwKv37xFf1QzQHhCHMc1O7ZY1d5vWE6AraI=;
	h=To:Subject:From:Date:From;
	b=lr+I3qP+QecLIgAp5RJbZF+p777Zr6rCl41ZTkf3DpyhiJ+MZra7zHBIWXT5har9H
	 EyvaSJ93iW+qnXCCOMw0pz2QXv/YVpIMP2zER79N6nJg75IQ7GURU50SuNNetlOjyE
	 XQiBEgHBEanH0uYhWBTMVG1kc62Lpf3wf3eaDF7qpwDRmeUkgsWjrG7pyHIivQm5of
	 yxHVIdBV7yFvk5Cdm2oJubc/A6UmAhEpmwqg6EOmoUSFCuzGQ4hxJaHmupyj/4vpAK
	 gi/Qtp1FIJFijtP8ly8WfXQa/Q7VMTBFv5RK2xE6DpOEzXX2Nh7BMkWmC2Pa5x5av7
	 sVx5JLp5J5E2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD80CC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167878428589.8434.4873252001430074395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a3f94111331d460a5ad77d8dfa4f73541f5ac824487de13d7078a797f7bb6f
Date: Tue, 14 Mar 2023 08:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678784285
