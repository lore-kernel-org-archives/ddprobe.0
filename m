Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715031878
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00437C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686380946;
	bh=vIoTkkVK9bbrBkeq74l+3IlmHI+pjZSgAW0hfKVGYQM=;
	h=To:Subject:From:Date:From;
	b=mFqx3eqAkq7/64WotUa/h2KPfo81ZK3W4saDlv4TRCkS+6k6tycflnYU0pk5NMZH5
	 NV19NPwB2s+Bbvk7hAO0VfORm/yT/P48446sJ+hE2EX4S4MOu1tri35U8+vTDe8ldO
	 dGvx3rFJXLJGXmmsdBZ2sYGRn8HFsNmn0CPfbGLWwEyYCSC2ND5PYmfbXpkhUqUD86
	 Wo0Ft1FE9VUpTUfM67N/GUCTV866xSyjLm684pFMmSDLm3EPhgKK+zVIYDJ6kZk103
	 e7SoijQ5XKCv7fCojRaJi38Q1LxgNXfcOvbP9MptB0kqsGKlQnlA5OJU/9+sWVfQWz
	 qsNzuF1JMtPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA223C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168638094579.31755.17261396144062243820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce8edfd4dfeb8e2b713c88f0e6c473e0535a152ea13a421c57275e4a03cd1ff
Date: Sat, 10 Jun 2023 07:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686380945
