Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BAD1872
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 04:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3218C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 04:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686196985;
	bh=VzjYmz1dLzPXicNItZz0lys103LBp1ZvyMbY3EzTwLg=;
	h=To:Subject:From:Date:From;
	b=YkK34SSo3K35HitBjT6K+OMhs042eGwVqQIKXhs2n/UyVr5JM3CHd7b86p2Ttqgoc
	 AhlJG+ihMBaGX0XxAiIRCbQcUHwo8BLm8CrviNnY9QIT9KMj8XVxzfsmJtRHPj2RJz
	 bENyf8q4vDRFshKJXCX1vs2qfAWVqB+YkOVwHxfj5OzkN7oLnw7J9d4E6WKvDnUtqj
	 o2ogQTdr6ZRTotDOl9MMTH149W0Ad2tsgAM4369bwLt33rr2TOESs1ChgpbSNwLa/S
	 IxdJlWRIjZGnXdjAYM0cxmzsyyRVcSatMAGLXL3v6wJYQZtrF9rY7/g5m7j62V4OBu
	 4fZyoKz0oB9ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4120C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 04:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168619698578.29256.9718554900306872793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c70de352a806e2a2e53f881e8e652d30feb3cd940d66161da4c500df93ec521
Date: Thu, 08 Jun 2023 04:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686196985
