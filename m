Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A8E6105
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 15:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D875BC4339B
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 15:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677252305;
	bh=/DCFBC57H+5uaDtRMrE5Hu6SRA0DqWyMqOuoazp2k+c=;
	h=To:Subject:From:Date:From;
	b=dd+reSXBp2AgzvkueC/yf5zGQYqYyRDDhQBt2jZEk/cNTbA+MARZyACUX4ZkZYK5m
	 aRk3pTnZeNMevCaZ2NjrT9zpHaGoWerYkJnXjyiPml/XeetwmmYbUtG10U1LcVrfAW
	 1z9ycMLJvX0DF73MRGoIxGE5jdXN7bFJvbsm+iCJDvn8IGIida6QZMUuV8ryFEBIXc
	 JXyHD5ZJ2R/zO5Du4d0oJWGE8rd+P1Ny/6RCyQkw1TW0mc2WluLhTWDI/vvVy9zPit
	 WlVH4SKZefGKq2xUwOQJ5AG2CmWgeL2WiJfMn/moVKfHBGjj9/tqfyF5A6mdvegDHL
	 mhkazonmuEkbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9BEC61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 15:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167725230575.10180.11482797511177918883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145e927de137373a743ecc9f9ac77a8c87729fe21fb441a6301277578d780b61
Date: Fri, 24 Feb 2023 15:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677252305
