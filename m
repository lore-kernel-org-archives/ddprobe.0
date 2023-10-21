Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194BF613D
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtUwyiiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88DEFC433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697881096;
	bh=JlwcCm5gXhpZ00GGb5kEV43+fEMHx+Ot6/Cy1KEUGgY=;
	h=To:Subject:From:Date:From;
	b=WtUwyiiqdroKXMglbFPV9/IwsvHPDReZtKy8jWNXtMIk7FRYuyUe4+DSrHBIcSF9S
	 JnS2Vg/lxzNiQkBbFutj3XSNEwnVe9J/2uxr6nR/nOJ6Lpqt5HqN1YBtK0KMeBjQuA
	 JaR/gUdvezcKKCHthWmW4sZiM3sgaC8CEGX9niRCR9Ecrn6zLZ7lfQ3Eg5uXhDKh/G
	 5dglncJV4zYRF2DKe5QQ3lB9aYQYoqc5HqXq8L4yN6zw4FZhNoHY9R9zIg12Tw8Zvr
	 EsMNZa+EJeBQwKIwiPYRhLlYS1ELnSFsDdexfWOlvmCaTTX5It0eX+Q+vK7V46pueu
	 igTynlh9lL7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F3CC0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169788109641.15937.2824808859883843036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e988ccc70187d309f8ed252ce55f5166810d6afaedc4dcf189fd65f53aa60c50
Date: Sat, 21 Oct 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697881096
