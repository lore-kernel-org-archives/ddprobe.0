Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C283F6FB6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705F0C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669903854;
	bh=mac4/ca4OTzV6eIPiQj7/Np9EH9Qyfb4frgOv1J9lI4=;
	h=To:Subject:From:Date:From;
	b=jAX/ZdA6SU/s73sweP/6fHGGJoWEWmPfwXkIzh8CHQ135bxcBaY/DEJnpC4EVDrzb
	 Xf9Gxa53emPacnCaFuefj0boGQGf1CcuBiZ9xvh4pWWagcjAjXKEfwmZjIJ1AkGnnU
	 yGPSbOeumsVK3DYBoF0ma8nFxwA5RsvlMxiSBS+IhlYMVLAqGNFJajGLfgDW8kkele
	 Rb1whzT6WF6LOXvjL37Wt2rYMwx9/DnnaNWSVQVpuIy0MspuYLpFdha7pIGUpIQ4g1
	 OEA2/vJeYJap9X6Kqv/qF+Oaaeuj1t0y0WqmCioMzYNQyNTYdDFkJlkti4TMNbVUXc
	 UEc03y703YWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A70C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166990385433.23329.8820421568949083007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9071bbb7a1bbf85ad5149cca8f2d9a3aa08531bdf3e01d9d7c1fc31591900477
Date: Thu, 01 Dec 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669903854
