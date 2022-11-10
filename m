Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C075D36C
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C0DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668076254;
	bh=gIK6QHH8Ya35dI3+c4pm2DVTt/zCp22X4LF5ci1CQlw=;
	h=To:Subject:From:Date:From;
	b=MxR9gn4q5B58o+aBqQl3rYAVHqntZCKshEY8VSL5ZOGMMvOLfi5sjPozkiLWThFN8
	 G5lVOf8ipaY5rQNiJduwBG0oIDjPQIaBpnKMShUFIs0KMQD9dJKeJgzfMijZMUQYNg
	 kQh1lwYKem4EpAPiu0pPzuw2nakjYXwRHnwd+olqjk4fbRUDyL2fXu81gd/Xvvfrx/
	 GfbkDyLSVfFHxfl/qWh4pZTIBl74rBpJJ3BDtJbfV+MGq+KCBv60L7iJ5OBrI/Ww7B
	 jh2Gcy5cKnJoSxRu80OFori1CQrFB08ojQDbZtwM/rn9L6tEkl5OFvZthgMCSlZg89
	 2H3YKHhv+u5dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516ACC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807625432.1317.1011708347674358187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2cc85d1f50af3609823161c2b4ed7fdb7e7cc57e50b0d58e87d1f2fed9b8c4
Date: Thu, 10 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668076254
