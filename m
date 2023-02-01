Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CFF33FA
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD639C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675276565;
	bh=5z0VcKQFi3BrfnkSnNOgjFsavmiV/3zNQ9VYvOYvVGE=;
	h=To:Subject:From:Date:From;
	b=SPZSprTrQZQzWWZ/dXVPG9QhgJU7LpGe5eOQbcBeKFMHU6XXZyBd7ZD9yevSGLI1B
	 do+O7AxNbRE+NTIO9jcONokhLAMK122jpbR6rQf06UCUTG0WMVVb2fMTtmAdH/fnAw
	 AH4tFRZjnhA//OiU/6aWLvc2NIw+g8JHOe4M0YV8V8lrDcfYNf8J9DCspkqW5/CKlW
	 FMI5ulZ2WwO+3Ng7C9Az09cQJweYQp2u9y650kwYDd+3k0EnKo5PvKG3PSfQjKNEkI
	 hMtqmQlm5xbIvWHl1cLk2Zm2Bp1tkAFxVdm2CA/6iCcD5TUyVVuekI6eZQnKpJYz1S
	 02GF2yy6D10Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09EFC05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167527656576.23596.8237056908300741426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2c4a08852c01b8ffbedd91ee4c99ab7295c94db1e1d832036c29318574b996
Date: Wed, 01 Feb 2023 18:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675276565
