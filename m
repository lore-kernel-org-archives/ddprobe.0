Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA2929A8
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1F1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682272265;
	bh=gqlGIEOX26yrARWu6UhEdQyecLbvSiqZTaIA0QMeMM4=;
	h=To:Subject:From:Date:From;
	b=Xg4JXOvsbCRhZ6IH+64FQxCBfTprpnDd6K8SQ4+EsLs+JMsIvBskG3i90bN6wh+ea
	 qVrLAD9CyBsOyr96x6cpuhXNJgl3Ueug+q/YFJ7KjzTvlHKe5/MM6+uIbx1vTG7jYV
	 dbOOZcOPiYZua+XlMO2XQxZM+cKsO55j7jL3L+OrWBzcEvU7Pqr4FHqcBWx4d0qO2C
	 EOr4jF4DK2ZPXXoH2mAkS3t9UmtuJWOlONf7nIsX8Rv000HbVVSOXk+CQiTnuX3CAm
	 aMHM8VcQBPPNeY8eWGR+l9lSFxJTkt2TjFYXbBO0gbQTrMoL+j3m52yMT12F8oG53f
	 mHyVutQzKehZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1F9C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168227226577.20962.12637046986837360759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868efb894138e3d94fb8ae51c4f4f86e339b659a8039de841f4c5bd15a5294b2
Date: Sun, 23 Apr 2023 17:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682272265
