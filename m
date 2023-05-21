Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC8C7E9
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 02:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A1AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 02:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684635605;
	bh=S3mEYcfUG/GmFSqiwW6wMEKL6SPvPSf9E2ESs/rSAdA=;
	h=To:Subject:From:Date:From;
	b=ThyAvms+T9yJALQEIk+jP0vJqsxYP89lJspvDKq3NlerMUd66TQ+7mLjjnwAOG/0T
	 PaYY27hB7lTty3QIfx/0b7muJjhlWXV0GUmiKZHWh//O30FM10Dq/HVF6aZtdtWEo/
	 a8JCofyvtvgW97nZOkuOEMvUUnI6j2guRZ77pIN46uPpxiLjbSfEHbKEAzxdy5Q1bc
	 RfiRI544GEnmYYUTIJmMyRRa6EW56YpcF5Txopb1s8Xf2HteL69Ios0sVjeT7aRk+T
	 LYvlbcNOhfJgZWyDTsRI1cY0iZeoov+QZYOYLhCCjTK5aZ8oygS3FP6BstlaSNEWXV
	 0pefT7net9p8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD59CC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 02:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168463560580.25454.5235518995871298237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63650b9aa6796e84b0905dd3939a70a1d422b48c1c61276913f00ed5917878ac
Date: Sun, 21 May 2023 02:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684635605
