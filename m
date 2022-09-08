Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7C87C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D95C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662606653;
	bh=GqWfz0ENwDX+ZcvuR3HLfdeT5kRjd6DULZf9JOn6oK8=;
	h=To:Subject:From:Date:From;
	b=mn2zm8PYm4nSCj+nKX3i9Epj7DI/H2vGKjue2s1sfXlkE6enQFpLeo1gtBvzKW+fL
	 argnTLBNcIavidgTR5SIfnMqvSOg/dcTSrUDBDKWYLSyYsHoExJoUPhW4VacgxjvuY
	 steP8KFk73FkCByj0/xYEogBkPoHLL7Y/dfZOGD2BeXB0QWWBDvRecU80LBIE9r4eP
	 QaqcSsSsQgQkBX9xbN98cFq4dZCdJ5aajH8zC8fQyehGuqNMaKodfxGRXs7mgdvJhl
	 WmGgJR0V1KhwKGaOyWxRC4mYkmZGQRIQAuE1YtW0q1d0vz5O1I2gr/SHCPsmo3Q6Sr
	 elDYy263/FLUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5698FC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260665332.9779.10858131169907696500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a969990257cd7a0056eecdaa4b2448e66a29c3e343dc46c2021b3a7f2c120b
Date: Thu, 08 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662606653
