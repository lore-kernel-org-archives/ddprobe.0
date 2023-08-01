Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61ED619BBC
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 07:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B35C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 07:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690876328;
	bh=q5uVPzfXJESdNiMXvwnQ/aFoPmPSeC/cM3+yu94jjvY=;
	h=To:Subject:From:Date:From;
	b=nvtwYaw9Jn6i5PkBid/i80VpvqL9cCmK8mZ/eehYjBmYGwdbEk1bruZH5E/Kx8hGI
	 PUY7yhW3vJ5hIWNtzQsDgNCj33+CTHfeYJLccrys5aT6E6AUDAf4tYuF1j8TOymMJv
	 DdWidHguJ7DA81ADcmqur209ywGeEK+hCpY2k9UojGCf1z0GshHTpAEsKmvBm5Ob/m
	 7QxsF/te/id90J/F0RTFM8vNQWmC43z2GPjh3dfUWJbM1lYCi411TSjEFcIK0QSZAh
	 P+yhZWuF4LVma2Do/jDYJXq/KgP/Ri7MRI82q2vGdM1lltajmuTUFf3QY+Iim6r9tW
	 Dse0EtfAjBzDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A05EB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 07:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169087632874.24108.8513365892015359782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54774f91878fb1491e2c51e5551099cc2c8fca273e6e396895d97ca8d8ee97b
Date: Tue, 01 Aug 2023 07:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690876328
