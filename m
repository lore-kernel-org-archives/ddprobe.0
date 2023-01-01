Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22A1197
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859EDC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672547487;
	bh=2XB4zkNYALPD/mYdptSQyxcqilmgBFwIen54H4R4S8w=;
	h=To:Subject:From:Date:From;
	b=VrjZ768sxzPyubCV95FRIh0bz6TX7ywenNssVllmOrC8CLBl79se6arj+omEEGCtz
	 KUy37dW9icUGfcKuhStUPtKCbBTRJkExGuRnEQflKTGGIbHFs1XIJIDJDdHbsXCvFV
	 c1idkehNnOeGxu6wee4liNbEP5X2/YWFi4oDzQdb9bRxVynee8TLTjYeucVNMgfVVj
	 HWPxe9Ek2BZ2H0loguFXSb5+YWql0JEjYZTfPIuElL9gmI3H9Y9zXbYtpWSvWSnudL
	 lVuFX7QZpqcAvD+6uqXUtezzJe9FiWGGrQRtBxza31mZ99CiLB8F1+lGzL5m9hgYjQ
	 47tpdjeQ3ld1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68542C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254748738.10380.11867681554947434763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9c6de0964de3579dde73a7b60a47c1aefe803e73b34e8835018e451c6e5e20
Date: Sun, 01 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672547487
