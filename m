Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B7D156EB
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 14:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61C1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 14:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696085768;
	bh=GF8UAkKBfN+kdCC/WUAg0jUJ6FuQCIjsQrT5Vtb0hGk=;
	h=To:Subject:From:Date:From;
	b=m0cQhKAjiqkGSBK0VMExHPUpR4bbfHzcwLIPABu9+Mm85/YkhzWu/D+ebi2tAgExl
	 Jn8h3pOpUvG544Itl3LMSfRIZR7eIa4ufbsxOlIWatn8uWbWpMHgfW0kDjSntfmTsm
	 8Yg45/WBfr23aXVOWO03nxkLnsHFIEKiFb4mYMyjzKh7GSgEiwmldsvHH64rbUPT1z
	 J8DbudEt/lsmmpUKK4bo1qN/yEvXVGwRWL+ldmkYEE4tusLkSNEdbFXPN+pvsJDrmx
	 4onKE80VGFUcfWu61QTkEjHWG11oQZjEkF5tXdDWR2UhIA3Awv62YGC8bsHkh+UIsB
	 2q0v+SKqxQiYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B634BE77376
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 14:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169608576873.1333.4119926273189991399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cb21415522828dd5800dd6f180664f1c89ab8f2fdd30afca5f72e627f3b85a
Date: Sat, 30 Sep 2023 14:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696085768
