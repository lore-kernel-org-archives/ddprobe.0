Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89C47E3
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BD3CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672188087;
	bh=waMvNhzcnYTnG+UL6wcyBNdsua7ZSsP/BbCIC5CSF3g=;
	h=To:Subject:From:Date:From;
	b=MxIbYacHmWVQfDUaAVnUtqs1+qP6xllug5HZyVR2lgOgJyi/lLC/qLYN7fM+hEHYD
	 Alcfef4Kg2jxdykMHZarK3nTMWnGg8ku6ywiTqhoifKUIVCNWHvnLllpQ249cbEjfc
	 eLiWCNeCUT2RMyyve0opNVosmxUYErk733pLxUkzRJhzajtrlEnaE+UaZweyixe3jg
	 q82utKZ0i2taII7tInylJ1QzYaDO2ovd5nosJS2UnQ6MAM0jLwepNX+grSKc/2+YJj
	 +aiACKUSifyz4TbWH/Mcd6Fnl8zxxNV6ua3R9DHTnW9wtAH1Q2lUi4UsMf1bt7xXyD
	 McfGuyfR0GJbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD3FC10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218808742.31303.18117522384502124486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef7ec157e8cfaa1104f0a2dd618708a98202bd6691c7629e3d9ce0e047c553d
Date: Wed, 28 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672188087
