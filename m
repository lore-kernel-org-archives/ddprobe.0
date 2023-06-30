Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACABC17EC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAB7C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688096588;
	bh=q5iPO7cGaWRiBJOe12eK9QQUTV7l5hl6iK67P9cxSbw=;
	h=To:Subject:From:Date:From;
	b=KXRkxfOFdss7xd6SKeuu7wTtlx7VRsiBWrz2pFrMgnBMdoqZO+ZTo+kJ50rNCSDCF
	 BeBRt6VI/Ch1uTWrqo9ntqzDwUi1LyYx2/JPbw32Jk7IxQTy6ykX1mkn5ZybZUsyeB
	 fBsnLIINaEyxZaLf3aYlOI2VcqaIohZPs6fb1/+RW2T/WGYs3L6pOQGH+1cFf2sOoi
	 HsrIhHkRLD1ivgoB2EguXUdyiOn6YeM2VUXlMNsOwI7G9RdjEdUzm0SsaieAUGn+4n
	 M58GEDt/O6iw9SnnY9qXHySOn7ViWkdYQV0HocJeYYrtXQs5eqxz06+8Y4VqwOKBCR
	 ag8sedEq8Zbxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DF4EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 03:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809658871.5987.17828712454215336141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7cbb5d9915ff80060c1639dc095247f835c39aa58f676e1efe08844398b6bf
Date: Fri, 30 Jun 2023 03:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688096588
