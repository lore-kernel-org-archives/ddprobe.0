Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6640F1805C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 19:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1C9C433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690487528;
	bh=MbTIfepsK035wm5YcFDri1AvWO4JF1q0YHjCqagA3po=;
	h=To:Subject:From:Date:From;
	b=CIpnaxT+8TRsMcjFlv+BRp8hZuSH2/Oq9hv35NAeEY0Oes0K5yb4V+0nJjdI+4FEi
	 zLO7JN6EwUAJrPXkHCf68pJ8NHfttqtedJc9s6IQI9yEgJHmUe7N65ifJH4BWlBgFr
	 6MaNJ8Is8X7lqmkD+fNKJdHIY4GGxARpcoF+S/t41IIrQpUErkrnvp7EiQkmz/gN1w
	 mnoGDYu9g6JMnHuYRFeN4PMGH/xARDvcWBdcHb+syyyY3NM3Yl2RotCRIfQNqpVYKp
	 bLuq1Q08nEfzkpMVKWgQAMcyZXE+r81k2jcPFQ+q9FIzEsaNJ+Wqhi3zT2KdkvDvkf
	 qGzFVs2rBqnFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9299EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 19:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169048752868.17541.15188511147222008541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea2a72f21e132805c99c3e9e26a23a9b3bfff45f21c6aa4232b6a5903672290
Date: Thu, 27 Jul 2023 19:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690487528
