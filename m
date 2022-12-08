Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35A97E3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88374C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670510454;
	bh=5r8NA6yS+rMpqNqTfhpdA3Xc9HLI5sUd4ppWkRegfmc=;
	h=To:Subject:From:Date:From;
	b=Bb/BDwiQRscJgpUYYg2EjfRDt2FdMs9ot2cxFz3IVxt/j1dR/3iC7iXjA42z8lv5r
	 5eUfVNNKhc6kVf+awxPDQWEkF9TYPH7tDGpNc4HhBcIDPLYY3dLrIQKL47oKk3IxbN
	 6/1/lhVGJMW28cXr9gdlXi6AOaSj/UjIytYQXjkPso1Wb9/GRvJ7iWzpsCzwacntKe
	 VJqLR4fy3VjAfQQoKeyXzASAOQ9uBQFN1Vso6A4cqZo9K8A7nlPh7j/+25LzkFwjEg
	 82pDV/5cwhMD5R7H0VA9EyT2S0t7AkONQq52m6AYF6DwgOwgC5isZ29dm8t+TLIFPI
	 F8lN4CHEFIdgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D26C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051045436.16544.13705790315151091454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0f979d50e2795950b2225e74e6b4a48fdf779fc68b090058b206be1d22fba3
Date: Thu, 08 Dec 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670510454
