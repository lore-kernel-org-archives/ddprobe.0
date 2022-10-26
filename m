Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8801EA0
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D427C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666749653;
	bh=S54YjTyqtOQs09IRukDSFhQDxCRrlSjJH0qYNKF607s=;
	h=To:Subject:From:Date:From;
	b=AJVXYvztFiFPEGdbUz6LaVpIckfRvglwB0O7xHvZGJl+utoS5rlJx2XP27Y+NahjN
	 c6f9u7fuMVdMvxEt76DwZ7hVhtg4r/qoBNvLt4PN0XYI9aMgmVpyPzab7xQRBFdXGJ
	 Lvcc6IA67uGHzKuDf/Gx3cgHuCucXo9sAu8wJj6bqWlbvrNOX0rpXfDAtqUlCozItG
	 JMOLgXxfEeNJmX701vJNoVx8kePyPJhkzoz3N1Zkrx3acuHr4SII2qIkUz3NgeUXV6
	 sjciUbcVNPLw6Q9rVW2JMpSigCiMug+7mxO3rndrM8L9if88+Ptivc+v9g21CilIo9
	 LhJe0EsHbNNzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522A8C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674965333.21285.1636596733415350374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a2957100460e7582451c96a82772110baef85771599a012a8edf09dab0f681
Date: Wed, 26 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666749653
