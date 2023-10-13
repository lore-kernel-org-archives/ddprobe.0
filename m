Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A3E241E4
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQr4ZPj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5B6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697226428;
	bh=y+ARErzt0p323Dt4sGhI04KzMtHiTknlinFiYEce4Uc=;
	h=To:Subject:From:Date:From;
	b=TQr4ZPj/fTjFNQPFU2YxO4x1GgiheUtp8xYP/H8j1dY8as0R/D3r33/UyKZvpEltw
	 7xZVPLOikoVMgw4Gf0qIbYlkPRztd0RC3MrjdlNZhHeFrmKYoob/mYaW0tQ6th8dyd
	 vTu319/i1ppKY0Aq4TTUiSkjGJmjNLsIfipAIriX9YVfqybjCi8avF5Q3Ef9y96Dwn
	 G4vDeE/sOXvsNw4sbFwrS1+i0RTPVmNMAlopZAQkgE/7SBD+qeNqveCFXgMpeXeIT2
	 c7dQQWCotMaER8IKfZ6HX48gROoux8BAS/GWZ0luZ1TnH67TTduhnq5leAcHgtsCP0
	 6pDwkbyrQHrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF094CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169722642870.26933.6993756852540589864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dcbf857b905581f47fa9776593c76ac9ac5f488795ba6e933bace92be595ad
Date: Fri, 13 Oct 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697226428
