Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A7EBA37
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 22:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C919EC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693781048;
	bh=87fMJtEJXBg4s07J3nCJ19vy2EiE9wAngWjrr6+o1Gg=;
	h=To:Subject:From:Date:From;
	b=XgjVc8bEWRRETirLaGmDZURhosU8BKns48xeKJeKqqZukNZ1XRwx00zRmqb14T6w0
	 kOOFier1oRKmn9S6KbER9HJhjTUfN1jEwa3vAAyvu5yGCDvJpj+T7t+vehO4Oiimji
	 Nea5LDBKaMwno8vyw4hYBb4nFRgh+mjDG+9iLb2XQvpaY8jFhSKYKYZcAcwCwd+Q+W
	 EVgqqWKBSyi9flx/E75lxzLqbocjamPvx1mxF96xl1tl3Gs25D4PYvoZiCQGWCVfVr
	 iYHCV+4hhUQaR+9u3wf9ObrXPwjILjstYkqgHd4Ou5bb/YFoWSXyQBplTJbEbymill
	 t18qnX0BSXKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0364C83F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169378104868.32486.17982435680281575122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a014ae35fe0d5b82fce7840c6b09c3657e389655801b7290a4f39c2d5f4bb9f
Date: Sun, 03 Sep 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693781048
