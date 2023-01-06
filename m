Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D971B1863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89BB2C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673046687;
	bh=AIHzs+dFaf/YcQy1X0Sj7STYUmPAJsepnQzhWJ3SA5M=;
	h=To:Subject:From:Date:From;
	b=ehRExs9DP6i9eapAP8/oYWaprOHLhUFo0nIw64V3CpBQyWN0Em0F640KThLYQ0D6q
	 t+GQEXcqbULXGN/B5v/JEAvhZQqmyj7xq90NEZqPsVPgLbLE3gxiFICn7j1DuCo+ul
	 70PsXIswcHtDuQgeJ9Mq9+G7/stDdcNxTGfKB3OYXs77fFeKxtiOrUYoe6HB0uBzo6
	 pQYYf3Jb0R5rkcLHIRRhSV4hSykY9CbSwFOH51GZBDWrKNRK3/4PPM05IqmJwYnsaP
	 o9WvQM+tGyxll5kT1dXcar9l98i2OVJQwKQg/LeWKjrOEXnhEUFXM3hrWoUjuu2ABO
	 bmnYmGrLIKbYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD4CC5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304668743.13638.544132745822432915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c31546ab6ecbfbe0f05cc4ddf920608b3cfa58fc9b29f50d1cb23e8aeee42dd
Date: Fri, 06 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673046687
