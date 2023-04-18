Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFF71381
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 02:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE3D8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 02:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681784346;
	bh=RrbKhR9FhGBXxmtxNhCymUP55cFxsgLiCPAUftcRYgI=;
	h=To:Subject:From:Date:From;
	b=GSQOww5WEqsoLnejHC8JCTzhkZx1YK3AWLBbXmzjk2zWQy/YQq3Bt7/mPO90190qA
	 6JtAlx2JwuCsKQZwDOgicYRKntuJo/e+zrsYFya9R7gn8FlV1iK780QxAO09VwY0Xk
	 8l7nhnQW//x+h4Rzn8InwjNEAEMg/N1xkfPSqGGgViXRquz/XYcmnpOLTSFVVesrsk
	 So79aPJfaWMbANqHcoQzMXRqmX4Ufmgt3GtDvKAZKjDwAKGuLYtcIY7DldxAedOAa0
	 IU+mi9xLHEb0GHGA7bGNh32drBMEfm5WQoIBjrW2U6lMef+tHncs6yp/JSfJZvvmgA
	 PtOuqt4Ugnf7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C625BC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 02:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168178434580.8355.6597658373447040433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7c92778214b77c2f5514564bd177521305d4877e257b2832152a7c3ed79a1c
Date: Tue, 18 Apr 2023 02:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681784345
