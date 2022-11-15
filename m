Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0EC23A6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C568C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668491454;
	bh=6Ce0+fhWL1VbF7j6g4cjruiQfg2erKN9kcDlEf+4Rt0=;
	h=To:Subject:From:Date:From;
	b=s7DGFecx9ZbI3GLuNXyo6oxvN64qhDbrhg3IrSPJGp/pCt9gPY6slRGJhJrJMSsop
	 Gs1rkolaAfDV8AqjdZ3pNYJ/bbAnpT6eXgbWkTova0Cc8SUMiK3avMbK54ly9rWbhM
	 GtBbwffJoDtWq5uO2XgeL0Cl7gX48xUTnhQiWiNBiLJPjFVzlfCDobQjLrHQeow0+f
	 BtGfkYgUKcmkkknfcsoAtEugaEJtovOFK9T+mu+i2Yy9+p53G0T7HauyGHbpV5GPXy
	 RWVp1pU2js8W4EkTZlJ63ZOhN3Z5L50NTPlvbBQcHpVLgpniGQ8P8KBAlLB4XiksnI
	 4JJRidgaj7C9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB81C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166849145438.14710.15367326806031343907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973439df56e579381c344d31bf86e7ed1b1f859323ab9c415a18008c62c33fe5
Date: Tue, 15 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668491454
