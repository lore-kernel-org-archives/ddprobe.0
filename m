Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A9417E2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 10:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E246BC433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 10:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680432305;
	bh=Z17X6l/6pxpCcdZCv4tYhYrIKEsSsu+rL00ELb+q9xM=;
	h=To:Subject:From:Date:From;
	b=Ye9kCk1u+qNfs0ImqjSXuHU8zIVFtzCVcswA7qiQdc/+IHQIw0hHV3WjqW2sbPfx5
	 86IPEJB2ZbZwW8I4JwAp6dVKBoy1NJboOn1ugEBNPeSYjy35ZbsOgKztBdO5XSG6um
	 LBoPTs3vZ/vdRx22Zaf8gfiukPqmw4bq8r+hv8foDKWtOgx67KBExKe9qivj5rlsH3
	 O2PrSLku2szEs6ibqcjsd4Z5j0K7zOmjPz/VzUZvQ8T/2TiC2Pq1G7fH5PZqUnoj+O
	 8tCikIvBIkIH/uIiSxKUNkNgmcsWlbbY+p52SUEta/qh/SBfX5cM6U1lv9wwdTbkmG
	 qz4nr5DWxIy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AEEC7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 10:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168043230581.20922.3567222849180482023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26c05e741789444195169d9d93f2e9c85121991a947ed4717ce590dd456fc61
Date: Sun, 02 Apr 2023 10:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680432305
