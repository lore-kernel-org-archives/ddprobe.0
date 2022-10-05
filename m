Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5102F2C
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65CACC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664988653;
	bh=Bjt5CfGLzygfvOtQYZ7wnYhEd1PRFiBnii1J7RVFW5Y=;
	h=To:Subject:From:Date:From;
	b=ATxlhPFsZaarE08QPwZ4GQCVQMtNqpCwh6nQ16mIJVWYukc8op/KAoJIVwjDtqfQS
	 mmNw/Tv7XDFnHs+xn34HW13ETk6PSTec0IntDsjdLpq+9sCUTHcxgbhZeWgpMFoqjy
	 LN0KFzz406DWki5GcxgN5D9qkoZ0wkhVUmzWeUpjlmjoAcL8r8aIqfJduHiRgOLgu1
	 L/YIgwBR9EgGDYkjm+pZ3MUbvOI+sv2fsCeT9316B/KxD4TZ1egkw42DvWc7UEaqgY
	 zLxUusGPRfrgWdHQ6TGq2nm+DG7QB8YIpBGAMxZEbdNO4fgII3m71H5QoMtOzGgbqf
	 JfmqEyZMrf0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50991C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166498865332.11791.6464870555045252622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041e8a95799d2c17327932b36c46fd9195c5cbb2a5c47b484120ff01a3e81580
Date: Wed, 05 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664988653
