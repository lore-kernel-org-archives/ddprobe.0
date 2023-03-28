Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B89947A
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD557C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680018785;
	bh=EqiUfWG/HadrUwVM0Mq8aHhPKvBRKFp00OOLJpmLj5c=;
	h=To:Subject:From:Date:From;
	b=WjlpaRz7urOp6EFbpFILQhaLK+58pNnDlUAZ1CtciZz/I2ROVYZOC/FL9onzEFJ2v
	 MdppOaF8vW23Xh4NqXYj3SfNebS5LRDS4eaMAfdaU391gHV5yxrNqEBaxrI5tFDCW9
	 fEGYOCGm5Rij2f63Gzk6ZM/bqmMNsoc8LKzxK2scgRK+6uVZmvkQKlbC++C5lhnoOp
	 LdH/+xZyVTlBeUDyXtQddWjM4NgB6WYWdyQp01XKRwZ4CwhYhr/0Wx4Sf2VrpFaXed
	 6f/ivfCP7vSmbjULfOwYMJlCrZYJSpTNZNTfhKwarF1xNPX7GMfL76XXNLy2bkorbJ
	 hl2YdMSLjBFIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF193C76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 15:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168001878577.8711.14118145598245155767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7927d7501201359f55b5815ee90c9334dd03cfa03ddde5523225826d7657da50
Date: Tue, 28 Mar 2023 15:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680018785
