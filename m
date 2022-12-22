Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8B923AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA63C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671695487;
	bh=uWCwoU3P+u2g0r+HoFT/Lkq1R1UZO+oUeIKu/lO8NjM=;
	h=To:Subject:From:Date:From;
	b=IEN+Pg3YOEajUfh8cKTR9pzArfhNb8OmcsxRREP9yFsGEO7wWZwumsYet8J5jpCq5
	 x35cpvcsmfUq1CmgnPECfAznxvczQmD3ZLrBCTc/f9FEgVCq3tr2bzj059vNsTgbZK
	 lqXASfxGbo20lQALzNiAKJr8tXUCDH7z6ptIqRAiWRfMlcmRcYImHbGxIiQ4b+44BB
	 GvVpiRdSALcv3Do23BFhpHpVgjrrzn8Xfo/GjWkKNsfOazslEOP398EdAHf7m3z+sV
	 2t2hU9wIe9kjx2dtJlFnEjSGGRFjVbHhXtqjJz5WQWjTuWj2PuzWMbXJVF0kyMLpas
	 uzkso1JchVGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642EFC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169548739.32694.2606700812811030319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34e1bd870f75826aefb50bc0bbd8e4047f0f0bbe232cf9fea8d113428f84119
Date: Thu, 22 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671695487
