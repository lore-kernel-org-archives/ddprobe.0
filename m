Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA372563
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 11:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE48AC433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 11:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675770485;
	bh=Ecb6kfe4UCWYMuw3RwXe2kpvmHdORM3yHocZiS9QnjY=;
	h=To:Subject:From:Date:From;
	b=jVk/LiXY/Euo4tbW1NDPZEjDDR8hK4VPMIhuwtn5O0d9AWw+OHK3Ht/rvfX1gCiah
	 qlZHvL3Obb6jdfkp3xPyr2U6vEbjKnsOjSfWO+9CLyF+qAOJR0zWlG3FhAz8CDrDE8
	 T0pQ8MSMLblOxQP5kFj+Ri+kXc38uuB0JXWQd5GwGmAfHrbGIZK5dkHTghNlGq+aYM
	 olnCTcRgs3Fb5UG81/dF32smnaftXhP1X/sC1lSnie9Cz+p3kUf/33C8vNJ/sDPUia
	 yjv1qSF6B8hCooRJVBoVkx/eMEzvDjOYx5DDVbDLQ6myyKmvDVl/SPctrb8eT5R40y
	 xVnH8Iv3v6jWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64E1C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 11:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167577048580.24336.6803340698270821936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b196b4bc22636e5a58aea61494317d2e068af1452d7988924f976c169b123d83
Date: Tue, 07 Feb 2023 11:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675770485
