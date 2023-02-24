Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CFB7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49CEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677227105;
	bh=+epDX3eZ4vXXcDbQ8aNqtZ8oy18mw4WlwmbVFpaNDSQ=;
	h=To:Subject:From:Date:From;
	b=H/4srSrClgVEJrAVkOTTFQVldxnezEWQX8sikm+AMusGZdCzL2J4liBc5AcujLbLm
	 ZJePQMPhC3J8+Px2JRO/0j1/5sDDGyqMpc9qu1JiSX8UGhYAKJAKzg07nUHz4OYfBE
	 j/bx8P/0uRyjZhhlrg3N50Pxfx0+YPNqcMH/M0UfyqRqpyg6CFnnZmc9rO3kryNu2c
	 d60A0yfVgkai6SuLKMf/K7oYFO+OW034wGBXcqBY4lX8yEyF64foceJZa0nsKO/Il+
	 6OgPCp/LGrLdh7nVLHYwgHB41QynJQxeNoQqyO4sGAzHXYafZW5yiBIOKFBRzileMj
	 QFAjEER5kqX1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEFEC61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167722710577.5421.12137985332413582379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7f3f55cae7e8e4ec7e0df9a7037a7cf5ccd3531bd3be7cdf819c13980f71f8
Date: Fri, 24 Feb 2023 08:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677227105
