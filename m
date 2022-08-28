Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56A1443A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC01C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661701252;
	bh=7ZMQkUr/+r8Xnc+1x8zQn8q8oDsH7fLUPad4wm8Kfgw=;
	h=To:Subject:From:Date:From;
	b=sVbh0JkMSWT6uF3zgqKo2Ky2u1OCPe904c9Ztsxq2bPKMNhnnKM+UKmJPuaGoQKOR
	 oPj+LBlyOcq6rg6JIsysXpD3ydZh3UZXnpBlCX3fDyx+dJ7GjlhnLrANn96hjmykJp
	 z3PL9xAioHU82fKpjGSxtKS/K84felNKnLvqQbBj6jKs2JqP+m3sG5z5/w7Dzlt3Av
	 FrUTJlfulFlUrnY9ovolVJgOBjOBbZ5PKy8otFWIzhrapyn+PMrNDv1/NUB8ZXBxeu
	 lCLUG/yGLSypNvYmi4JZx0XePoFny2CK11ahAUdZVAQTeHisuhAUH+Je9gIw94Yz+6
	 VuI7IeBcCQ9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532E4ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170125232.18307.16301461719904328890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de21e5c83d84bb0c1cb4b9df1437a19314b4cd0ecc8fcde9a130254ea1549b2
Date: Sun, 28 Aug 2022 15:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661701252
