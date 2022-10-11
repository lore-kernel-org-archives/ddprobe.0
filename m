Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65CC15A9
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E9E4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665457853;
	bh=I6eib1M2FrjQajHeAQ7qwkhrx3HuU/poWhWStQR+g8g=;
	h=To:Subject:From:Date:From;
	b=PmrZERyFiyQTzE7QV9+0MSn1H0ym+SQXK3AAOpDh8xtDkekZgcCNBXlL9XqzRnU8N
	 amw4QY+E2f5SrP/4gTeG5c/17PYoL2uEO4RPcmtGZd/oMoLxcQsmarV7j21PbTRFx5
	 ndYLWckXX7On/HdKopfVDrvxjvtXV3G4MMuhnPGpw0tFZCXwI6qu8PRJCzx5Eaj314
	 CbbeffWXQ6kLcW8PwvZWwOB+213Ldz/sGe9sbJWNKSfx2RrxBiNNatB2HJsvOIlgo1
	 9aIQrOrcJZseP+rwe4BzwvZJVwaLrlQzdFDt9cPyBXS022HYCCitH7T4k11ds3ePu4
	 8Ht0krK+57Xeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5631CC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166545785334.26760.3789160147979750718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00c801bc61fc5a1239106fa277996d6c4e8ee17581856125891ff8f481d0327
Date: Tue, 11 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665457853
