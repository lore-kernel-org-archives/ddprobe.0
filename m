Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386B95251
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 13:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC275C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 13:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675691765;
	bh=tndM7ORMPk66A4zgVIhM+0GM2jo2AVLgsGqIb87NqNU=;
	h=To:Subject:From:Date:From;
	b=mljjIpSDY6gI+Fg3GWHhSmDiKr2ohBOvxY624plL2hACimzX/8pNG6FdXWto+Rh4S
	 oxKNaaMiw1MPOIVCjzZKDrglwABkZo6/9tt4KY8Jl5xLc01880UMaSjSsck4l8h9SS
	 rgZzWb85p+loBVRQLHYxQKxXSSklwzJ7PfkYA4js4IccYoek3DJ9vvSWPwYyUHyYFo
	 S73CuPt7tHPMPOTimAfgYi1ge6tJJ008QyhO51VPkxLfP5hMWKkr5jIPzjd+rM5vgq
	 YG/s4aUtYb8xvj4hhEmTJxFymSePr1KJLSi0d/Tj+yfKe0DWcVkX7H9BYOYTHBKZI5
	 ttPWv+4rtO/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D60C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 13:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167569176578.384.16608159776822733509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ecf38390c0e7e037548a1be3130c5a1c4ba1633f8ae39d1203430dbc2f0ffd
Date: Mon, 06 Feb 2023 13:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675691765
