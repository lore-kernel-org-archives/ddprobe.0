Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6780E15A3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C24C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687226528;
	bh=rQCNkcWmRABzvTfJ5YIcu1oIlU9LRRRZtqMU/8Y3ww8=;
	h=To:Subject:From:Date:From;
	b=JKMYA81YfGeuCOeya0gE78CxzgSmtwrpff0/R913q71D3JmW93dxuLlXIGs3FRmDb
	 wwzPOyD5l65v2v+oxn3+WHmgHVNgFQLWruL8XE0t4yJDfA2HIuY58WeYKPOPTJMlaR
	 A9NB1TmsuZWO2GpDhF/PNnXrwnu8+mT3MckZpcx03rkVBC3wzig6kz1pzDzs3X9Ayq
	 ouILMV3aWnqfB+cJqHtHduX/AAu3aRsFHZ6ITo3tTeYo5pK0EQHsOnoNaGAwSoGLIw
	 zJZDUGROfXcTYxZeuDw7lVTkLwHYw8LV2mt9+LGBhQdV46BjmEUn5Sx+fqTFBVUmJb
	 07jGw1SJziwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7C0EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168722652875.8739.8354342225964191490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd979777780044141f46337ccd6a60add69bccb5dd230e3b4f7e95a00579df3
Date: Tue, 20 Jun 2023 02:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687226528
