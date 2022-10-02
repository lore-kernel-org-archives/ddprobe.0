Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BDE15AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707F8C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664673053;
	bh=k0Dh0hRy9E9LywpI/brlib5nrEyFQZHRna9zTfHze4I=;
	h=To:Subject:From:Date:From;
	b=Lqr106t/PfEcpzhvSDCm1hgw3OuhEYXPn6fS5UIj3EOzRzRWpZkH1B14Pu07ydW2l
	 5P5MKuSNRXMIrR3OmDVlQCWIvsg3xHP9PXZPrDp/f7s/XW2/enIYlqWrg0kJteYSpT
	 9KTarzXZVD9scIbolvSL5A0PlZnBZ2b+7i+Xcm45J/O/rUHySlpvixRGEH1hVxe4lb
	 40VidNCnT/9KYsw0+gXMdKtN998IxfaSBwB5vAj+NJo0XhJTLAvLPI9CUTy3FO/nvA
	 TM/UHHvBm3SLRPJ16arph0kSOSPD/sxAhwm5xH+rNaFvsRMDXBXAnXvyWoKSrptnUf
	 YrXfQjoogTHXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5597AC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166467305331.18699.14197614298292230885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5688da6c275919c07d5dccbf8c4b0949421069082818411bb29b5269a5bfca63
Date: Sun, 02 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664673053
