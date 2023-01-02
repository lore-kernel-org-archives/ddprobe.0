Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BBD17F8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F5CC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672640487;
	bh=7nH8ICfUn2d2UAS0P92wz7gPxkMUXnpxs2HwKbeB9J0=;
	h=To:Subject:From:Date:From;
	b=TGKygw7DzC/IiRWFjpwHJb2eYclvJmYwIvYcDlnIs6oTjkjpzcScrn2uU+Ct2xPnA
	 VuZhXWu32vJOwwc3JmRGVhtjBtabHxwD07BXQ98bBWUrqLC1JsDsVdOMgtBfZp4WdD
	 RO9C9xc1bgp3M1y+jyihh54d9IbJEXLRDthKK7dT+OsjVsDlIdoYXX/L9qhTzX7w6Q
	 Afk6Ivhqi1PlMne8uwmMsU1Xyh838aoKWKBsFjj3y5o43tyPAcGqkhnrwwskDdxnqo
	 pN41qA8SpAGBpdcSE7f0A52IQQaGrCbMabS30Sppaw+Nfj2C1BIb+8poHJj3ag1T3I
	 YTI8yHZpHY62w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67931C4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264048741.30021.2434200406569844107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b3a4ee18d0f895f99d473a0823dcff1865436992cc3b35106080840e341a48
Date: Mon, 02 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672640487
