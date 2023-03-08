Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E608462
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 17:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15626C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 17:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678297866;
	bh=6zSCHBGIECT9A32kY157mta7QHBZD4MGiSnFTzvDZGA=;
	h=To:Subject:From:Date:From;
	b=YV/ahVMR6ysxplLLA5Sk8fL1QLWQV6RUgioBoG1dRf6hGT5wE8itDQCJvbQAvfLrD
	 aLVFyWRSKr8UAI1zR4dUC6dCLwObcoK++5QrpJ6rSsNtYF8U1eoPzzU8zx+lKz7gU+
	 KxKFVPpkQ+4PYeZfmbaN+cUK50a/9xb9f3pCkF0/CANaAHrl5uGfKSUB4fch/wRyMS
	 9WD24RC5meBI6cFC44J40HwYIVnBPsk2FPJZ2iZkJD7lKiuRLH5/2n898j2unie0pp
	 k3eVkkdo6kg+w0QdJ1BitrMBlIWvB6g0z65roAtwyNv7ptg5nE9XFeJ0PBeiIjnCnp
	 NBOS1nM2WRV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4FB6C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 17:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167829786592.5842.3659456739015146066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49575539000a8afe08f6f6d0864e1bc98d34521fb98b3054c8a759899626239
Date: Wed, 08 Mar 2023 17:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678297865
