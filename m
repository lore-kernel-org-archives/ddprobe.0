Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A594C62
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2F2C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664393453;
	bh=43WW7TQGBeG0YreRavgddE6FD3086z1aeWaHepKDapU=;
	h=To:Subject:From:Date:From;
	b=A+2BoCSGUnBCZLqgQf0yr89VHw7sw1naFd0lJ7PM2yU73WOEB+bIQT7FHV9Mxe8TT
	 lo2hzoxeev1sJ5+9V8LieJJwuhpM4BCpDoQqCv+9z9LkOAXdV9ZzMl0M9nh6G+nxMa
	 iTpWTTlZU6Al8G8BQbdeFlj+J0gCYJmTAPB0diBEySvhrlXuESI8AcvSMEsRHX070z
	 0PpS6azU9C5w4CEJNhM15q+HeOX7LFPH07SiHZ1z4lmLTe8tdqkaaFzbCMHFDVMg3x
	 AbffujBEtfQfy67ML2NlF1eM18TP44MZOlHIDuzUzVQ/+06Hi2fvvIva0oR52IA+om
	 E05PPHsp5grDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50834C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439345332.7812.5830447907791559569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efe8dbf4c5714115c168f86cb139773919255d2f7d7a49f91088deb1df73f75
Date: Wed, 28 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664393453
