Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC0610E5
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 27CA8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679362686;
	bh=sjwpO01LxVpFDJ2XVrIHUu0QgsIuC/KQtZpzU3KPSoM=;
	h=To:Subject:From:Date:From;
	b=fzLQdrp5YhuJnR1dV8rqKdyz6hpdTzlMtLq273wT2ZyfpolCK3Ic6TnWP3dHpZTzP
	 vJ+E/KufIcBdpTNRzdPykbXa9U4N3glfRLCa9OfgSfOwnz/V2fkqqN+AJcZx+5wpzM
	 TqduDdUSs5IZWwCScN+ic7HIvNoV9o42meco1am5P+c39zlQ8M2duTQUyXTashNHgT
	 +26K8xX8bVckmLjWDga3pL2J2Ias6knflm41lM8ycaOvNKgfuVdAEIbpj0Y9rAsWSJ
	 ithfDQ9SEe3GjW17m/mBY4gkdLBZ7Q6D7a+R1mreOHwm8R9JDKyI5n0B45JAcVkHnI
	 8iY5cPX6jneFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05B51C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:38:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167936268597.16614.10936720092938997998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aacded6e104ca9efbca7717f442c6ea7b9ffece4cfef53618f665db39705d59d
Date: Tue, 21 Mar 2023 01:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679362685
