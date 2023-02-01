Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3051163B3
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 16:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDFDC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 16:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675267445;
	bh=/JWMSJicwqI8NuKhMbUcE37sNjtBfkKjINZy5bxn370=;
	h=To:Subject:From:Date:From;
	b=kEi1BMGi/m8CHTonkENJrAPRNsUHFadq22edEAMMy0EovEylxlKEZKBzWC9l4yzWa
	 QZrQSxdh9SyLLz7WMQtEmhGvU7oiLN5Blky2WSj5CQyhieR8WL/H3PIlSMd9zDDIvu
	 MZlvasP3ULEDUraLNpqO7MlAVE0jJrbMpcuQsuUts93ZVKbJ9aYf3PbXJASxgzDZjK
	 69IId746P0daIRXLcFchuYbrWCR7otIAEMuhNHX+Z898V9/HlStjfqyDhdg85YPUsv
	 XV5E9YvDXR8LQdYkUO7qlVgzfVcdN6VUZFGD0kIKFwk2hwsLMvaair2M22p35nAJdG
	 Mk+jy81HirDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E9CC05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 16:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167526744574.24629.18104107833577981395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75f296469b2a9d9eda00f0d7b57e69bf9846ca8e4d369819d5b065400b15b0f
Date: Wed, 01 Feb 2023 16:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675267445
