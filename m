Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22D95397
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 671AAC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662546653;
	bh=ZEd1FQ8Ip3lWcW4c3JusspNm/XevexVrfcicQ7vXTmo=;
	h=To:Subject:From:Date:From;
	b=c+Sgxo8ly86Dke9VsuIKciJb5Zjiso65oh4wWC+WnZuVuPvh76HuhRrhFPoh2phpc
	 QLTQCzyON/R+RwZxKS3FkHWet8MzthqeyhS1JSTJ4WoH1AqiRX6mU7J7txtL5+E4SG
	 z/wiMJEe9S64DnIaa0gr+To022q5NSE7URWJ35/2Mzojrn1B1tyLkXKsV5K2J09AFR
	 KW5MPi90H00K1tDmX51KXNFgiRB7mnhVcmhS5TENy8Um4qIXEzu8NB5go/9YZCgyuz
	 8uqZHX6kF9rTOgsvVaGbmUwR9haCgplNlqrTrxJr94kqFMDCmomnaEPvR7RXvzJxag
	 wmqz9tXTyFCVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB47ECAAD3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166254665331.13054.14480483305637592665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9df3ef168abd7c7caf585576e516ad58d66a020445ef6d5e5b4eb57d26ed414
Date: Wed, 07 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662546653
