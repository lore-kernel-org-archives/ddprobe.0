Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0AC7E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83283C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672460487;
	bh=is8JGefrqiO7wLgCL6S8izCX2RcI/7vX83cutEMNJnE=;
	h=To:Subject:From:Date:From;
	b=HEFbW6LYON33VoZTMxxTZF5ubeu+wbmBMWL4u9P3ZtAlJKlsMC4UWSv2Ww+hBQxxR
	 V27Jui2+WeroRwJ2oVrZP+Dae5FyNXojiYyuM4dNbYuWoISuSqMVbTk2dLluc/8iUz
	 Qcxtx8JnYMQw7VHr1dCgTs5ZwK10OUH4l7Sk06KOvzigSRbQv6nwOb/GX/ofvNF7LR
	 RCeXS9BOHQe/YPUZ3lARGyoNAQkazRMLntxxGPdgIg/RPoSpKB9kX+s8DEfFDnxGre
	 zB8daR7xhvhfHPMSyjK9E+XNdbi0aw+U/DJNJ9GRajBvOa2wecENaT8uMysu2B0JR+
	 81gWF6nNxAkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61588C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246048737.2986.15592865285942614764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1e46f6f468caba6a3cd34dfe13103d005f75a32c98e3167283c0ea909b2803
Date: Sat, 31 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672460487
