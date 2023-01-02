Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D1B4430
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E52BC433F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672673487;
	bh=OHPTRwOkMq0m6QSXEf3u6az5ZMngU9Wj77R7ccmRgUU=;
	h=To:Subject:From:Date:From;
	b=GfAUhaq+4z1QG7QIh6+18rsyu5+OtEkzj+T8dlE1IcXsavdkD3LIoQ5Yr5i3qTxAR
	 vka+dhTbJv56ZCRnIYUOUw7ipf5viBWy4HVaC022CDZH7uE4gUcVKddkD6ZRHzVUeI
	 rlKqf0oGDxFuXf/8ia9pQbqtXt5YCWoggbq1datST7eED358/0PYBG1CljumLkBTP6
	 QndGaBIIvPHrEDiHYgFKmjTdY8jOLQRKsgbu1D/hi7YFonSVw8xYykoZxBYt17zCj4
	 ngZFATDcPKtTJW/6yvMV/vewWmMKrz+MFdZtC5vfg7h0QelhWH17OzGJzeeJBhurUQ
	 x7E8qIGVGMi9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606CCC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267348738.7164.17059105596941512386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88316c5a1ccf72acab102846ee0d09ccb69d6b28e984f67076676f7dc26de61c
Date: Mon, 02 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672673487
