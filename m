Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C8E7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76525C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662855653;
	bh=kMfzchg510dLZih3D9Url2PavAWcqDYLMlkeHGBTEDk=;
	h=To:Subject:From:Date:From;
	b=AqP8i9o+EktiZPu8QxpA0SFKxw5/O1mJfpnBNN59pER7Nkb378MhjGVsgmgQJEXHo
	 cYg6VlKT73UplkPL1Rx5bpTHE8Wjvii75LfZPv0NYVLliLqRySstbIbpaLcobKh7uY
	 xkvO9BObpCSsOW3B/vAx5NfMQsiTgDQgL252jFcSHbpUOL/7saGPppl0qgVIGymufU
	 6s8dCG9N94x9xuPWlU6R/EE+f6R8AQFi17uxqzyfHfM897YwvLOhiiON4l33jg6JpY
	 hAC4CqV+xAQWqGUsH9Xbt2GRZ1gXiSzIeyI86RjvPQLKhRFFvSh802AC5yQYmu3Ra0
	 aa99zyBn+pnsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBA4ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166285565334.14974.14783872059377288223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f864b376cc49b985c989dcc7e628ea337be4d8f1e8b4f522d88063bb53111850
Date: Sun, 11 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662855653
