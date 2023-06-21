Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A7019E45
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F24C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687371188;
	bh=bNOAJymamWPYec5OF1h3ytnHNccqtyEW7Mjep/wJvD8=;
	h=To:Subject:From:Date:From;
	b=ZeStEMNqZ3Jz4MPOOC8xlhS4QK8SiSV0GVaS3iQugABP4OQB9+Fux7FTVq0fZuR0/
	 XQGaOh6136uYQJIOg+mcu8jNnnWp6l4w7OqsFJjd7+CLw++RjCMKsxLj/Te07rTfPZ
	 iNg0MOccNI3inTHiaBcOTlHj5bjgTyX1VyspnYabZVd+063JcdNAWLTG97knLWjPnQ
	 A0e6PCgNi84Wy2GH57RTYYEimeLXjHHlENLIAduc/K4SXjDYcOggQPGwRbBfVoB/tb
	 m2RrIIDuaKC6VES2MjjtFIq8AOXSD9U89qIMMXVIMiyOUqNWdMOrH9yFjB9xLV9S2R
	 L72FGQpCnleSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB628EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737118875.17166.4614849134233217929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a077416e5fddab7e931798dc1b7a52498388d1f8eb8eec7c4a5894ce219d478e
Date: Wed, 21 Jun 2023 18:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687371188
