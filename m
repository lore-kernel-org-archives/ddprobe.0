Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D760D7B
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E06C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664647253;
	bh=sqnigrTjFu5lpHY4Sdu/aXl9eJTGmlhPq4CawiBvKBY=;
	h=To:Subject:From:Date:From;
	b=IACEyzNTh6yyu0xWWjedofqlVtw0p50nrtOuTi/2rNPsenqtjoHaWzUliWA9SXyk5
	 n2T0c/jtxrPj1aT04XPDH22DjkO4NZekkIrKrFsaIs4Icp4ILD8nqoX0sGvzFJN3ak
	 gSy/10LjFYNcm/pDxMH6UeyIGrbEXYeNekApQ27BlQostb5yRUOyTmlV7DNAEe49/+
	 sL/5GIlUuTlzPvnd02Y5A5hfcZTJ/tS0sHHAapdUBUQzL4eedrvmyyTJ2Xe+s8B0nP
	 yUnY5gQqYJTEI7DyRxcaFzQGH2nw8rM3bZpo47pAxqImWA58PpHXBzHhV7tVMrnjqO
	 kBLq3OxM2sKMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542C9C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166464725333.12031.7351979688872000543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24636facfc0e271e8c5a5802aa9bf9c5dccc169d0171fe0501e1c9b7ccf4ac0
Date: Sat, 01 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664647253
