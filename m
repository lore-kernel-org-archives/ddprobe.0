Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F8910FB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93EBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688094788;
	bh=27A7jWOEntXZ6q/Pg40vOJEz1cRaLZ1f7Quhd0awIJc=;
	h=To:Subject:From:Date:From;
	b=TOYFQkWZnVf86BS3YcrnPsgkvmUOuk7l2Gbf80ErVwgRgn9ToHpi2kegtBwI3/3i7
	 iU6SxQBUNSdkujqco/FXYZfqpSczXMpxdm/LTx0mD6NDXPAAoweU4bmXFtDzUbk2f/
	 GycF4SXqKVFy3SCeUN9+CO65wiwa2Dq/bnd1nN1vAtqFhPIMKm/QZ8E3p8jUJohIOH
	 q4F60qB/nh04jufOKA7Y9gGJVgln55VyU1zMriic0fo8OUA6Zu3PDNfo7T/xKlq30R
	 Ly9YdQn3KywES6+mv6SNf6pdJ2eOh9qJWCdBr3t4MyPq5TqBq33sYIjWSoOLDgKDah
	 wMZDxlbldtp2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD13EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809478868.28880.11184547988150797058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6291baa363601eaf9a05c007ce513cae58cf1822c8a35b726a49d6c20396d657
Date: Fri, 30 Jun 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688094788
