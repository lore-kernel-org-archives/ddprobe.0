Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A747B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 02:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 044DBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 02:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680056706;
	bh=r/o/EMlKazFqXzcp1KNCAihrNfJrSOVh+bvxKOipOd8=;
	h=To:Subject:From:Date:From;
	b=UD6/CylmW8XYFfnDTXaQXE9kQO7PdctPk1G1FsX4bdA0kcQQvDRaAAl8tDuzqfX6U
	 RoOIhjDKDvPXEEam3KEJ5xBXXeYdue7cRHeNvrYpaWl0BncqbSSO4z3ndNe1J9MIpC
	 15IfbAtIow3QzC8v9DSALXTTHx+I6vTBXjXmSTJipG2CQMGYCuvftdgmfxrPinn1bL
	 4//M8S1fPw5hroiHx2vJVAYlwTKyqCROxdlLxamWOmediR/dOQXkvshyO7MNyLBmRc
	 cNsMCGHweRw0lxs58MFtmHWPj67z615COkyxEiG/umderMgHJl9Kn2khXghPlwIauD
	 GCL/6iKjuLlrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB885C76196
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 02:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168005670588.2316.14138327689476797515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f3e256bf22728d8ded1ba93eade709b0c3c7eeec2b027bfce0cd0344ccd724
Date: Wed, 29 Mar 2023 02:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680056705
