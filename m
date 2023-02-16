Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426A423A3
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 16:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E14C4339B
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676565125;
	bh=whndjTx1Jhns+v+n0OSRimevQLItLhrqwDJvWoP4BKI=;
	h=To:Subject:From:Date:From;
	b=P+l3ce5EPDSEZJPw7E8KOFe7AIRf997SzV5w6AhJyEk+1LCsFt7kHgSvtBm2eXGqt
	 UK40+XU5O2HumM6ynFPO16FsajqcZi+3q3rUO9c0PlEZbUJtTRsga1lhf0Ae4n4C/l
	 BMNuSulWRrxxsgjsWqU8iWXAv3RaY+L3JTznVih4X/CeFeJJFEkb276/G7mOfYbbXB
	 SUK5bBYIM0jBMovDcU92eZgOSv6LTYECJ/gAio78VT0qM5UMCAwAIn4nS5b73pRTo7
	 lRD+wXER63Ih2jJ1jB21oXtfwpeykZ9wwcTPyJUliReAJohyTMnf48G2LKTvVEJpbB
	 CZi9Y55Rhfc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7999C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 16:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167656512580.11358.6379243989687060504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb7899a090ab29f948699f4fa5e108dec7f159e337d9679d901a68264d1e6a7
Date: Thu, 16 Feb 2023 16:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676565125
