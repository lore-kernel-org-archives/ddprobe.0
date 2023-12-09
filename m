Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0542B13FE6
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1D6iWza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B54C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702121896;
	bh=qjcvk9eewltUsfNxbCtyCT3bcneMcaCSUVfwp4VIJBw=;
	h=To:Subject:From:Date:From;
	b=n1D6iWzaCgoB32rmoy4MkHeEQdjkE+LSZOXbr+6qntjHFJyR3m8KT57uPSVvlfS0Z
	 wkBXEbgXqF0UrR9KEfPg+BRzpMF5LxLEAk+CAm8H9V7jTVVI2pWVRNAWJxuHjrJtLK
	 WBa26xW72r2EI82mXudVGcOONsxIli7HKDxk96uHniMtnabb5ZPd9FrX524Q4nKJFI
	 tKtZG0McT93O7njG7+30F2IVHoLKIibfya4zxeyPfjAXEHMy7BG7a/DmOCy+cxoUvh
	 iUFBfQ2n03KoIGKhUe+9dGc8GnbS2+Catutw4FXsP2txqPQsqkMJcYdEo7yY5Q6BAt
	 YLpATcvYunwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D524C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170212189637.15581.927829187693297379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107f301dc07bd0a4287bb4760d50e546e071e1ef29a1f71ff062fba46c8abc7b
Date: Sat, 09 Dec 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702121896
