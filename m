Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C643D92
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F11CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663187453;
	bh=oY6n1Ey2iuAy0Hg4QtaFhMbCBmyRJa/cZvFhF94+jCw=;
	h=To:Subject:From:Date:From;
	b=L8JcyXDTwONM5TtcBqdVpZ1BjFn4wNlPb7XqQ4JOdHw7Gpm67O1Vey5nAj5qh4sTR
	 JWOGIFktUkkU0tr54AqR5fYMYFs8Yk0Nb4W2j7mhjrzI/Wrreg2TU5H/EYDlqIPPLU
	 j7MguFoYr9Y1KdXm92Ae8VIZd5VjL3PsLMdg9MhBcQpnTAjE++24OF2jsS+zJMUZrb
	 XQWEKMeCO5o0sPMK86W2fb6ZlxwvNwWMVBxJW6/9QC1UU66rUaHY2exIheTSlDFDii
	 3FEeOCeEDxqGSfvy+ilViiJJk6Fv+dhF6AI+bbpi/T5v6hVlOYGG1p7W0EtlPZK0+0
	 PtScnlDMOBuUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673D0C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318745340.10656.1447902487314482100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b971a1f42e4fb107079b703fe5fa3e1462c6c88dbd8f8b6b17df86f1a5842c73
Date: Wed, 14 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663187453
