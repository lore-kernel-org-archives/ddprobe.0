Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5576B18EB8
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714456943; cv=none; b=LzTW49er0LVdOUSKznzZ8DF8wSbtercBPYPTZWgeiKZXUbxfps3+4W1ctBw7ZUfcmvy1ZiFBSvBXA8vSWUuB66nEZXO2Ghn8S/ZjgXEpknmJ8sgPkpf6QoZA6bahhdEMxUjV46RDG0NXQki0TL/dlDma0cvoU8/0LYrUkBQLTZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714456943; c=relaxed/simple;
	bh=CVOvF1NiNjTUWLPDDixOlKnWLSJtQ9qE1+YfmefYiLU=;
	h=To:Subject:From:Message-Id:Date; b=tLLO/pxthgTsRsP/9/CPTdcRKy807hbpmx2bC5qSGBYKz/cZaHz48AOiIZiExyOy6i2dXf96EKHJkokxW6QG7W6tJnvgngQ9sj5ag8o1bb1kCKTcTcNenRsnQqHyuMgwDwrF0ygaO5H7AqQzliCbHDsOfK+WjUmw6sVoRw8eXdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Su76c9rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Su76c9rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9AEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714456942;
	bh=CVOvF1NiNjTUWLPDDixOlKnWLSJtQ9qE1+YfmefYiLU=;
	h=To:Subject:From:Date:From;
	b=Su76c9rcmoc71Y/TXzYF410ZUn2+Z91JsH30NfrwM2H2t8R3Pt5r3/77pIuwLlXGU
	 +1eEhXM4sM29YGHUnW5f2w5aks7J41CLbo7ScdDUWrJalQW2fRD5/6cjjeBbcBpZAE
	 xeAtjr9wh4+M3jIAhIAze7qjA6yN2k5ifEuTIdOkaT+5P5e7DMjcHSXZEvlDvdSyjz
	 FtY9QU08Wb/MyAKtBR89zs4DIsJUbLb4B1Yyuwhgya7jFQu2brZP9ioZfW6XohYfTY
	 1aHxdnQPH5Rhe23iiES4UO9Qqnnrtga3kj125IEZcBff+SqrzikqNIcOZ8qh07G4qF
	 gTy/YrGtgtwuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DF8C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445694277.20662.8826488128915494212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be518ee5739c8a0758d563681c46046245c2aee96bc47dbb025ac1cbdf2fc56f
Date: Tue, 30 Apr 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714456942
