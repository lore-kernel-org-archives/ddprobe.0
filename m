Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4984409
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6569EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663956653;
	bh=lca/gLeiVqUYV17e/kTBShFxryBbiyaYYcP8hiSFCeM=;
	h=To:Subject:From:Date:From;
	b=Lzue+Gp481ukw5agvnDxfNI5Tz+EoFxpzw9Bu75pmgLQiQQr3EsQPqOf+1RqJ4RFO
	 Whuzkyl1AXBWuouL9a9msroNMm8EmsUaWlnvL4JmX7MKM7A6Fp6i6vdYPRAcPq98Sr
	 ImaUe+KLzmppcET8k1yR+qRwNbnHQ6qaBxh/DK/c/Ylm6QWigBjRRS3edm8h0GMWqu
	 HPBLSteeMSzRc/LIaK8YsIYzYkG9EtFfuzh7tro3p28yVmHjNhAIzCciWp1+I7tQFv
	 MPqWDo8/wauOLHfETykA8pDcwR6kkmoRkzgB47xvdweC8GUuSum8lrRxdeNKByo8ok
	 QFzCKlA3Zjqaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F6A3C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395665331.28517.3480837487680810592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5279305df9886a6dde302a142b17995ea6bb2a31f2f6c9017a254b06bf1ba7
Date: Fri, 23 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663956653
