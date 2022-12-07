Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05A028E1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C5C9C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670452254;
	bh=QuCsLXvGI7gKfKFvDLT8Heuc5MxC8M8LYyfI8uwaF70=;
	h=To:Subject:From:Date:From;
	b=t1gp1/VFevkFr982lEJn4uTLo6W2KUpd9ReHJ8tOCNAzQK7rKaHpBn4E83HFoK1Zu
	 7Fqnvli8o7MzamIliCvzemrI1cC4GXFXx/7bGmW5ejq2nMXGOVQa6ic4gTa7b73vOh
	 OkqzBcP0RtAeyXoiHiVSggPfHFYnhMAwxoq93kYJDRwPwFFHACQaJ5fZy05UF1qzPw
	 8UksuRZtHMV0641iaSJK6J2hIkh/A0eqt1RUweYbiI9g8S3B5qHbijS53nDKauum9E
	 ifsxFXHMBs94+Dc8ip4A9ICGiK+XX9XkK2lbP4GvZyzLmnXiJUE7PiNYStziSx8lSV
	 9qpyWwjOMT90Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A00CC4708D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167045225441.31000.6592250742195617371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88f52144d2926d6d0b0bb48201781d1133775c0d5cd54644449fe8073db6dad
Date: Wed, 07 Dec 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670452254
