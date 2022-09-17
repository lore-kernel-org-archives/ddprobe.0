Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5FE1378
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC4FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663413653;
	bh=x2+hFXc8hGl68W3LiUdIT2yngyPkR93v4NCsrRfIor4=;
	h=To:Subject:From:Date:From;
	b=sBElGGGKrFptd+AykJkA/3LYqQdV62na/HQIrsYqY7P3hRDkW4FFDndNCc4ox4Rmw
	 sitGLZg7gJ0DobF+24AA7/vnOyPhLmGA0/vkVPQqYIWO1j3FAm+o8QPq3tIHuvKMJB
	 FODZEHQt4hFioKme9EOKR3gX6Tc8q4N5eIsQxxLdFjEoDQ+mN6jWQcP+iM8hIWAat8
	 CsQBCQqqGHPfJTQwBpZzfHA35RPwYjKvKUCjJLrUcolCUDiwsPuHWAZkzDGYghYlbD
	 VuwpdtecEM43C8ppDWJAFGdYpmQ8JcR0avINOB4RHJbHDM6zjcxRjPxNv7UjkRvL13
	 0y6+PH5TNOa0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510A5C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341365332.9930.133205108571608953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bd5506f2e6cbf2d30d2c1864ec80b0f5f21cf53fe7dd3437195ca7a40bff3d
Date: Sat, 17 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663413653
