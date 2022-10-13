Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5F47B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702EBC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665653453;
	bh=YqIw8Qm0FCFkfxCYjIjwmbrdP/ahkW3RPYDc9rHsaOQ=;
	h=To:Subject:From:Date:From;
	b=c79Z/lpS5xONAei0nyjUSEsdJKI/OO9TX6opnc/7f2fyY7dJCeZVOshbWL3nYiCVB
	 1Xepa4vVlPxxhq6537PgD7VJx8GJUi5RbJZEH/3H8I4hB7OIeV9qW8Q3QCGiYFvFOi
	 xnyyIj/d7BeOWSNtV1IB64Mnp21UHJzCCqzQkIGK9atNHfV1lMX4sr0U2uPWOdtdbR
	 4iD8aYlvq/s3UCwO3t13uIap6JpfYJbqC18prqJLtpJo41irYGu37iceV0IRRbWySi
	 ekAZV5QqzngbM8SLHTISYaaj3LR/MJsO2Cxw7o8LtoW7MvtYk4G57Juq4RtZ+ARJz3
	 qbo5Y/QMe8qIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FB4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565345333.19720.3758550982927851620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b1d7278164d2ff230f241a3cc4222ed4bad2872f296166171d2a2a2ccfa282
Date: Thu, 13 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665653453
