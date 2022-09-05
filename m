Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FF74416
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A62C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662394253;
	bh=Wqbou7tW5CK6GTsgM5XrlHcjQOzBxBRwAgVae7uKL24=;
	h=To:Subject:From:Date:From;
	b=tzUzmqtNAhaSgzIXdIucejgC9xnhGUYjot/sIF7dAFo8aecYPgyVWNGTha+mumChz
	 fzbZ+L7IdWaJceoG8Kx3aOo7j/2qJ+DfReOXyFXL4KaQuwbPvOpGbizmRwRhDkbviE
	 3AVpqmXa5iCXl8VmqzKvlQ24HRMPZx2glKU1dQkxgqJVzBwWkUK8x3QRoUK0m1Pk9q
	 ehORl3IiNg9QtlF+AiBbmetE3t6IfTTgMd8LOkUO0Ny+iQ3ye2hDvjHSrhQs0+v3dH
	 3+VRl55lBcf9rZIWxitI+kJO4NvL52Zhs1Pp+dJDQrEyO/nN0ZSjvTrIBOi7D+w3CQ
	 vMKtrMqxEP/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E880ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239425331.25880.17783579964466628432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bb7dafed2ad8e7cd501b58d69f3ca5b80bd4647cccc4af201cd7cb2ac74114
Date: Mon, 05 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662394253
