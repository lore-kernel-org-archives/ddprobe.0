Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0DE810
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3D2C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672830087;
	bh=fwL9P0C0sjw+jdI1TmCJv5/YxRY2Qi8vWT5repFwGO8=;
	h=To:Subject:From:Date:From;
	b=NvBNjU4s1p5mSLSr1yffuqG5JuJ4P2LJyhzD6Vmdw8+iEjFp+IcQ74m0yMai3nbRd
	 3hq+ADmOmcNkWUoinMYk2Kl9/r3yWSO7lSXluwoG4qCs0cXSz4OmbycKA5riJ86pQS
	 uuK+IkEyPN69cJirv5GonmRuz4z+lHPl8FkIvL6p1jjyAqLYb9q+Y6OLcIqcOEnC7n
	 HrWVbtyX4M0RVPCL6K6PrYlL1FdfUu/4zN9+8NJmrh1djDT+00fmo9BI6UG2GDm8CS
	 pwM6J3U97UfHHXIME+5jEOmkRGR9O1ODmZO/IVANbVatcJbI2Vta+0zzQQyGOTxlnA
	 4D/mEE07TKCNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60336C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167283008738.18522.5682006568403943955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81be69a2b708094bbd0256c29fb8b55af1a4142e1b1a3e2a04f09feed6d03aa8
Date: Wed, 04 Jan 2023 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672830087
