Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7D5A492
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73020C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669669254;
	bh=mlne6BqszbarEGgtyL9dbTIMEOjV0dUM+kD4gkfMPqE=;
	h=To:Subject:From:Date:From;
	b=GTORDjWCaNMpEsRLjE1LrN/2U8Wgmbrq2YhC20qYjUxScBqYzEBAV3+1E1e1ac26H
	 Kem/Nrj7VgsGIYZqZ05yqQu0FyfcPcdVvT0XdW3GmeB7xux5LyQtZ3Nogfv4LiS9uu
	 blX08wiNB5gyffrLV7rvntIKHCIdIIjycLf3Y7g1d1HckIUYnUUGKhbH0oPvAoBiKB
	 pifwhUpl6O2zgb5MvgsN3W1VdA2KYE/VPyOaiOX/6IJbhu0wKgsv99jXXzDDVwTYPL
	 3/v8yif6cd/41t2uZ4Bh5OGmbLDLdYOAqupTG8Sa+NzNHmpL5Citr/tJcdqsgTggUG
	 63seHu0mCxAAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D74C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966925434.422.3907986365106509973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0260b31f2f313b22dbbb7bc594df73fc8aca557292c466548dd2b6ac6e24b3e2
Date: Mon, 28 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669669254
