Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC956ED5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C488C433D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664370653;
	bh=LRLVNfKlFd8rJX/KgPFbfmCywTe7GD/g92d9+poFXRI=;
	h=To:Subject:From:Date:From;
	b=YXyknoZpk+lRr5hOKb7iWmrvEJunyRe2lyL7+FglVLIqkMlpEHfXxYluVXZqDE0dA
	 En5doHXr8Q/fGb2Rm2F+BL2y6DjCZmfupCEn9/ZtIIn3cisN/OxRjUy2EiEVGcnZue
	 vR3qp2qbujPbTe1q4n9cz2MJV7XvDB6yljVsXCXC1TTeaucY6fQIpaHQfCOM0xd/YV
	 nHwasrDCAcrqXH+GJ73V5QiPUQvtT0Y1VT2uoFewpL9KKNMMYf9d2L93Mbkv8tMMMw
	 /7BT274H6wddzaFQ6mTmCp2ti43wcu0X1ypr2jYaLZ/7J1PmSUUTkw/x+akMeTF8MK
	 KJtcFSJbkE7Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E3A6C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166437065331.3535.5999853590129466100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12d860cf6803c2f7d46293ef56c0fd54288345484b4e60a42927713ee74d3bf
Date: Wed, 28 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664370653
