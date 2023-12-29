Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C50311717
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDq4nY1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A823C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703858896;
	bh=fgh3nfx4GLipGQZE3+iY0MR39MTzGQr55IyEhFF5weQ=;
	h=To:Subject:From:Date:From;
	b=NDq4nY1crBRnRjkbiw5oliVb7k+el95Mr57ZjEE0z5ZFjNCuH+q3cTD81YDxMgxJ0
	 QByO9FkfRB0xFJwh10DGs0ZtJJN+kJN9o2XhDJdFuX0xi8kaGzz3k4cL9gkHpBzh3i
	 CDLlpCE+z+MsSVZAviV/LU8Qfea6LDoYpJRi12KL1L4MErDzlXycNsrCuZUGyB7+x8
	 RQ/E+uBhpEQjaAcJgSH65IPF3vurhAQn/1IxUaN2H1yKoycmZE4m9T1/MzI+HZyYDp
	 H6Ws6pfeKTXHMb9ItlphK8g9CUwKkCci/0Cpx7U9R5fOznzmOBAVxp80fhlgwhEk9U
	 Oy8MTJyCobLhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6860DC46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170385889639.16395.16438037234350238182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f55bbb36e358abe470fc87c491ea926a135484932a00ac180320d112b4018d
Date: Fri, 29 Dec 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703858896
