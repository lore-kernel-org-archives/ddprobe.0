Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC97B3C26
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 670BEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663089653;
	bh=QTjQhUDGaP827T5QgS6dJKI3Hc3xrb0wnDeFh9YUf5E=;
	h=To:Subject:From:Date:From;
	b=SA/4XSuZCV8DRca4ZGIrUOwJTdoa30gjeJYq6lQCEmvKTkPGoR+AJxF+QIt44A6OX
	 SfQ73MmwENUBqhnKXpIutNxjjYUBpx4k2W/WfUFXk12zrkjgqvk1DRUMM5TqVod+/2
	 +bj06rcwENN9zxzXm5q3lXS3mtRXRi1D7ZP9WV2YoaxZmj20gix01s5YbH6MiEdIKE
	 gP7KNpSkoyDLYVeGd5O9ndhtXUohmUaCo3QiH9Q9H1UHkYHWjM0aNgsfsoQvKkD8UO
	 /E9HZ9CcdtSQXu36UVpnPL0PvXeoNuh7d6N+oqEVZpNXoJAJVYRIrZDpIDmAmxe1Ct
	 rRXKCtY5HnTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F87BECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166308965331.3178.3846342670284977129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e15aa2c0b2fd930f7a09b19b6ec7e8d09fcc61421c65988d9f193ad16c8da76
Date: Tue, 13 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663089653
