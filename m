Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160CD210A
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCFCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671872487;
	bh=X53mKDbAMOkuG1pP3njFqIbPP5T5BxR5at8F1I+V6ZI=;
	h=To:Subject:From:Date:From;
	b=a3so4NB5QjVpduyI3mm92+5nS22ObND/XVipI9mHlEw89DNVXkCxBAQ4b2rvW4tdy
	 JnseEIxvlN9+8sAkJKvfcug1IX1H85UNU16KK0QqfYblitbjMLNNR1wuodCZ8/y9BP
	 lFVnKssuXA9MFby8AGqtTQ8B3HZ//OEx54sZYlzvIO3+/xHR5dUA0vqRD/HV1snKOh
	 hcjOvBgEZrptB8pEBUMO/lDR9SS9Vw96W0nagNNDw6BSiUx0kZIKSxv7/+UsNNzOOZ
	 v767mL1i3E2fgaO3FIAZy3Yb4de39l0UGzllqTrpbNcQq8o+96ikLVbSj5vavi75OS
	 3OO9bYcDiNP1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76E22C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187248747.27256.10181587798426167698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b858b909bd6e229f31545eeaf5bde972e5a2a08101d49d4412e892bcc220f67
Date: Sat, 24 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671872487
