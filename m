Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC96365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DF0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663390253;
	bh=ESD5WQxUFwBkC6Y6U9UD7Fob0wE1RzxBtxJ/N7k8saY=;
	h=To:Subject:From:Date:From;
	b=OYJlJ0Dp59l2VfuHRCLHXte39NuY5VOyqVit+H1eD9M4/psrLvAQXSOqXOzZ7kxmw
	 KyyUGLTSlzDG+mYc41gsYnI6tuWzglPl6kAM9kWMHERqEo5clB0JB9xXWiKGQkDPMc
	 iZtClsIYyvJZ44ck2c8jH6Xk7aD8jZf4itRFZSpfLrE5ZN2KcOjjwx1B31C570OxlX
	 FWh79jV4rbwq8v1uFHG8V1bNXhIeoWU4Cikw/MY6dwdYVDIytpkKGOqhSXwJlNu9zu
	 /JQwjRaj3fYfeNDyZYH4oQv58xCk29E2gyJR2rItv7cu6AMvU2MGdgjNwYCMpR1Bb+
	 16i0GAw0HoK0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57845ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339025333.5254.16916263970520493489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8133855ba9b91bb8ceeb92d3db7b7a7681e81d1aacec3ca2f4aaf500eb367787
Date: Sat, 17 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663390253
