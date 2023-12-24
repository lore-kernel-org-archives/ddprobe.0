Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E03220F5
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQ3XtUni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92E52C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703384296;
	bh=0phnKzZeo5m6tiWe9ZQ9uUrGye/qvHa79l6+RMdA68Y=;
	h=To:Subject:From:Date:From;
	b=AQ3XtUni3PJuYdXqgxxPuHaSKXU+L6LkIILiS/YeNm2C2OvPkXhha9EOwg2DSDzef
	 AGiXtleoJ4D3G8uVBOZcMBpYClQgWZmAY3y3d1dA7/r+tsoTzg0qAgGuVSAvkV1uqO
	 2kBNS3rbdJUEFEO0dtk5Wi0alPL+OIs7yIGCiK3WHDv52+54WMlhXGa8YdoHtTtqM+
	 yMozXD6uAU5qYqKR2l6AZPnZanj4Rr06jB9cLLeeaYWmjPK5eBNwCHnoT+L1PefHZI
	 R7k5iDeKitgFvkTq5mVX8X4oX/lY+wDbu9d6aAWCrMT8+5smmgwFwkM/hjYIsBmN82
	 SUkCe4VaxB+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B22C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170338429643.19310.13051314675610971214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b275c6bad935f869da80c8726ea14efbdd2a3258dd2e74e312acb08bbe81556a
Date: Sun, 24 Dec 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703384296
