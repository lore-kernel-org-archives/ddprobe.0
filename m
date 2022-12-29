Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCCE136F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A80BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672294887;
	bh=lFQ7MVV7OvUESjDHpSnLNN3dxMT7qK4dCmr1aKVu3vA=;
	h=To:Subject:From:Date:From;
	b=bdqyk25Roz7Vqb9Wf2n+F4/dCm6F2DfquCob6nqfczZvMBS8llnHfs6iAdfO3PuUQ
	 PKG2gh/KiDAi5MLZnF4S15G2IrMP2N87NuNzEPIOLD6hEdJQ9bEBGP8z8Ty+EjjbJu
	 0kKDmL7qp9ZjtO8gtgekGtR3gWFvH1j+6aqr31gpbjwgkV+mbquuqKMixBieJ597Fu
	 mTGSOyEhDcAA5OA/XqDt8Mh6a2yeHDDYX6563Nm4r5fy7hTu+kTtw5gqUwPahdxOEd
	 t1BAs4lrCHw4Y8IA9D6hVYl07ceGqLkqRwXYpcrnz+gtvbB/dp3Ucudqwlnz7YL1uk
	 5WTWkwHy61h/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67979C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167229488738.19795.5231046009780987563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048c6f842417eff924311326c1b3b4994f2e23706f46aa6e8bf611a212c23c8f
Date: Thu, 29 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672294887
