Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A60F10784
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2403C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688081588;
	bh=I3MzfrlPygiZaRq8UATnR3sguORYubfSZCUx8Wo7P8Y=;
	h=To:Subject:From:Date:From;
	b=UvBo6guU6p5lwS1cDb4clZkE9UlTdtcjl9nXyNKJyZQ2zCb7fIzJNJRBAkzAOU0/z
	 PLgDt61WCOfXro5Xe5qfh+hLxSyrP3Jwy9vsAGR6N5PRE+PmdjQEQsWT8bxu0hKvBL
	 oOH7y3c08F5eDIbjYbL6eNO+nq90Ok3DZV7VKyEyr/MwZqSgDuGHC/dxe+tmWIeyjf
	 WRvY9D5LCSjsTLojsozz8JIwuO5aNGquwdOfJp0vi1Hqq7OO6HAA50Y1dZ/l5GktgR
	 +RBKfXjPU8HM5R9Eo4V+PrATcrcW5T46UFc1au0L5fSd0i4/1kvyspWmsNns/pV0RO
	 gZKDiHAN5MpXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4050EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808158875.9640.16263165568284071756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fc95af26e785a4a416e7bb8ee91d02bee9d4c20ecc45a008a3001636adbac9
Date: Thu, 29 Jun 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688081588
