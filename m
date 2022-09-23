Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80A317C5
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DC8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663909253;
	bh=fY8tMoAkiHpx9k12g/2I2z2mHLdCEZ8wZ++JXeJuF9M=;
	h=To:Subject:From:Date:From;
	b=QKJ5frrpwQaXySbLBbfidcEQLhK2e0Lig4WmCNPGGKs9ry3EkAocr7ovAx4ZdnrJX
	 5kNgCgIjm1ietIZzs2vHAzx+oSiKvRvDrFwo8gj+OmQtw/kNyqBwfyO0g20nqoUQAU
	 TCmzh3u+3iqVudqj7NWoTQmFSLkyTW7v9+HIo30UCESWZp3ESNSAl6bpA+1kfBq0sl
	 8LVtkVwF7CHinqmjuYe7Siyunr/ek4vIzNAEfKNliirYUY1YmIl6FfwMGrVGi7+kDx
	 zQizAy1MkL1oxUfMnXhekBUj2g4EWpFNBaeV4hyeC6aIghBdUJ69PjyeFBXGHaqxIf
	 Dj6KZtf/pK5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE4DC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390925331.7842.144342432398054572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4dab113b46f180db77c7991957ab908742179de9d38fa4168eff0437aad47d
Date: Fri, 23 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663909253
