Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D1A7E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D958C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662445853;
	bh=tkNyMctUIStzmwJR/HANSypIdRK/YOy1CEWzvLKw/mI=;
	h=To:Subject:From:Date:From;
	b=d5eN3tVA89UCRKsMCiRAYOJ2O7KHwtJ1R54sK+km6+CBdiIB8uHJOekEWrpM9R3Yq
	 Zf40IAnCUDC0tB2WUxgnsEeXvCnrIbLsgLo6McZTMXiNvHlThLPVgqB0Ldppxry2Cw
	 Uf35YukRwNXJ9OJaBmTZ3h2lxv1idpElhsh3So8bmBLkSWXNwwNijZVQw2+YZcTuv7
	 n459jYROp+1eEgynoZPeRSbtXT6rqZtmh3xsZlXYLcDSmMeX8mmxoHFDkxlPBXY0c6
	 2Bs5B44F5/XkyQoCFVvShUt5KTjxNdnOcnZip2CLuEEOuO5hxja9d1mYTzw62dJfmz
	 Hu2Tt1uwrYA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530B3C38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166244585333.19787.8024237791527416381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc37f72224cede2d190626e6a5a04413912502e86b234a7984c7c8665747a3c5
Date: Tue, 06 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662445853
