Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE1A8473
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05B2C433CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687249328;
	bh=+4qXgq1jRVVLxl7gRUM24Iw5CK/n0+5U2rJ6hKq3f6I=;
	h=To:Subject:From:Date:From;
	b=RJMlQD8Gx54ORvcxRFbeJZ2v7JbKzn2O+6lyJwFoTLnwA6HE6ZAQqfn7bhIRjNorn
	 9a9DMxgbCSkFBILKRXG9c5qCbJY/Hb8c05FNXr1RyFIW/VXh06TZiE/tVnuHnwt6WF
	 9Rpb2srE7EgCySRbH1dhJ1mQt+cSDkhniyWTokoUxKSowrXWG5GVfNEt0CgBIZAOyY
	 +hQlWNhepryhPgnrj/ILbUH843iKETzCX1Hwr3qdNuZIgYxqpWumUukUS7XJf+Iaex
	 QsEvFHW/B+afE2a3UpaQqpEofBsOXN7xJCBjcEvuk6FspPj2ZapHvo56zZPhJXWhFa
	 Ccxax/Nd/V8ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0727EB64DB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724932871.19907.7729219084189310548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5a23460383198a0c0b0e353e2bfd786cd36dcac47b97fc639bf4060684f343
Date: Tue, 20 Jun 2023 08:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687249328
