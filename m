Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF097F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4525C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688938028;
	bh=TZXNC5PHacstcXDK9CIcGRhmWAwRooEfWIOvPZqNn6g=;
	h=To:Subject:From:Date:From;
	b=MnKA4sqArSM1IJkYnUyzaX1YYjKjT8XrPmCLiakFIOr6rynUhE+ZfqGdviDrJBR6O
	 7SZDxPNKhVH1vyFUEabK2R8gy2Oc6tDNrqA85x0ChilQxvsuiOnqpD+LritpxhBNZm
	 5/t/RXsBVROgRpiDH2wOyZvTneHH4IBnx55rfa2tsV8bQBmbav8Lp5UCFOJkqhe3+0
	 fKx0Q899xn/NcdDYrUG0RAgsOztHpFbUc+lxm7ZiQwoyNGzrgczOgGQhcCB9JY+NRd
	 spuRAb3NGIknIh4J+SlTQXZRsZ+RecqgbI48ID4wFPqzTqJ4EAjBBfeH09B9UGkumN
	 jmwFqKPj0i+3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DA0EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893802870.30797.2644550341827118840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e7aaa7c83b967b88989acc2f6b2b981dc3af47ebd9e55416921b0302170d0f
Date: Sun, 09 Jul 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688938028
