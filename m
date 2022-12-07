Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFE71FA4
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6539DC433B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670412054;
	bh=LM9+EgP002jTUEvL20JROv/aSTUBUXvFO7U/peA/SPQ=;
	h=To:Subject:From:Date:From;
	b=Em8fAi0TSNZSJSeAbqxaij7moRnsM8LIH3XliuHhQ9s2voQDvf7kmg11SaUGa+5B2
	 gUcm+tqORBgJsRFOuM86YXm51WxvDjPpe41RFrps2dtpwAogr9YBAOaQ01XNc+fusS
	 eyH/mAkFUqWUd0oo/AlMXhtpilVac6tGj2Lr5h+3T1fxraHJY76rGN0NFn/c9JMtoH
	 lpb7/h4KjFUNbRapSSB9KFDY/tnPQcbZLreeY/0vJsQnBvwSg1o65rv/zORy+f4N+T
	 D/IJTzRC8ZCZ24TLFa+7MTbLB9ruMFr6OoU5MUoztnTKlYqunRUWJCHmkyvmEejF62
	 RjmLUmuKhuv3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DF8C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041205432.16890.6265539683314564184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cc8a4a3433dadf8e23a5b9e29231fdb052658cf0f61c055d8ec7c982f3a8b8
Date: Wed, 07 Dec 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670412054
