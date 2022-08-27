Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1091D4413
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8EEC43470
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661614252;
	bh=K7Itd0jagFWOZAmaWDZN4u6gSDhWkDpqzVkUcyfQmAQ=;
	h=To:Subject:From:Date:From;
	b=eKe8INc2RJxiBbz01IBHiQsl1C2nvfGakJAEiuk8wA9t2pfNnGrm0JcBbY0oh6rM+
	 cbz5d/xJvy31oZUavmMYluv609dUdxxhKUUGWSmCKrgMpnaVpdlPWA+X1LiWIf3ijj
	 Fzmjv47Tzhm9qr7eWGD9hwvSJmDyK4ldVxg6nZe3ZEtbN29c0pcBX1sc5DlIw8ERH+
	 NKOK4ta39i9kfGnG3VoX6OJZcfQdRdom4xP4mFqyWRobmpJ4owMIeJI5UPegr9/s8F
	 gb7WsNlAqSBFvZ03Q5RfCTfV3/W7aq/CQCndemNRxKikxDFpgnxuM47OxyWLoqlK/6
	 9dWw+orfMxm4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84897C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161425252.5412.13248733696270095531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5118427575ad144cdcdda242e4f01c30ed99129b04a88d5fa1c1c45a830fe5
Date: Sat, 27 Aug 2022 15:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661614252
