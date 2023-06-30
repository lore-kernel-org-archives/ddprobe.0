Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E841AD45
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 23:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F13E9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 23:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688168589;
	bh=Bf0r4mq6iMGrmZaqWz1Yq4ikadO+NZRLPgx5KKpv2ew=;
	h=To:Subject:From:Date:From;
	b=ch/ju9yuH6ZflI34nVgH97Yp3OEz5qjLLx6jTgfBvBV3aa4pVrLOUrM4Ah1l4lR36
	 kTchqTz0JKC41yqW9AsEkhlOGQAnNPS5KlDOAqSfYlZA0YKsmHr1bJDy02zYBkQCnR
	 Htei37PiTCkDiDBxalDaZY8ABYswZe0Bsas5ImeNyI8bW5pyhxUYI/aXyrQJnlT9jj
	 +uGa70Xt8sPqMLbNNb9AXBvvxTCn6r2rnLGA39ERFLmO9hvzWjaNZnBjaCu///BiQr
	 HzCC5s5V4oS6ZTcHw+CaptbEBZ71fe8+/yEteGCgLBRMgtVLjTTUiOeASwMzZfckbb
	 T1JztFMEeLX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A80EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 23:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816858886.1709.17503506122536395074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c523f6a1b7247976688c851be4ee352838ff10579083305cf6442d297195d6
Date: Fri, 30 Jun 2023 23:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688168588
