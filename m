Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FA76FB4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8284EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671478887;
	bh=NlDp1+I6DwPVTCUyeMEU8xFTnN6jMW8Lz5OhDCjPHNI=;
	h=To:Subject:From:Date:From;
	b=Pb+W3FTapN81EYy0n8tmmJFA061CUEWz1/cOHFZrp+hqFMgkTFxwbULxK2N+xDW/1
	 jtgLsn5WPmXwpYVJ2l1ZAtQCav9Rji1VBmxU2rsgbsChv037CmZ7KhL2Y1bkc3+nyb
	 YPdr9xXep7M01Cq5ry2fec6Rgy2FktmoUFHrOs4otd2ofWQTnvNkBj/0VcI9qLpB3o
	 rpFot6dTlAVd02l6piVT4dO7pGTP3Erk1fxKJf83iTRAp3kaDHVwxyFPnmtUIMR4f/
	 PR8LYq+Z7WVBisgwIRb8cIbi+T3K4tYRrPfa/1XGEn9lEg+R9vcTOcIUjjQ1+CfxiO
	 8joNKyr7Do73Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C5FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167147888741.26236.4325585966964109289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece78cbff99bb701681f6562a9d96726c18d08266e379f80f72f8b67a8caaeb4
Date: Mon, 19 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671478887
