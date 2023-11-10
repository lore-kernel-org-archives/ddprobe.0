Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7761841
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr8jBRpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D064C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699589896;
	bh=8gz2+NyDID4TvgJdh7hsWLbdlQkBhkIwvr4rOnslz1o=;
	h=To:Subject:From:Date:From;
	b=dr8jBRpyz/1Pxb3Vxsv8DujHAS7Ve9px9/ysowMlMzXUV7ATGn7BANAJcl5241xdA
	 Xsk2rb3KF61tS6Ig3bRZjiM7vg1vJDHTUxcqdDhzhwDDpnn2gUy2kDKWFNmMbujupU
	 JPjo59ILlUPU19whlbIhY1LpHDR7ZDpHbgjJKhBK30YaHY0uKDQcoGXzsWu60k/Vq9
	 uYlvsZbseUlQUXeZU9daTVzu6u7xnLlaCNBs82PnGzapbVScXF4mePQ3BxCvNAGZCJ
	 bPpuywxaeWYvDWnDDcatVLU2MBz5H1Au6E8MLsOWZbuvex/liy/WNDru3X9w4MMDZP
	 BtKncuMs8u2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A119C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169958989640.3240.12424805879565561094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd147230bdab720b132957913db72a65627c5c094052d3c06485dfd6ba322d3
Date: Fri, 10 Nov 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699589896
