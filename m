Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D45168CD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADDEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690656128;
	bh=7d/6nKizHvW9b1Wp61wvD73Ld1X3dxxWl/rT5gpi7eI=;
	h=To:Subject:From:Date:From;
	b=L5LCh+ESJsmZaqm0RMJj8kKnp/cQhBXtx5ErH6N5rmfL/tGqNflH/YBxXEFT8ycuz
	 a5OB6vf9Rst682bUHlgUmmqH/yk4JCdbkXYvydwKJytV/mej6ZfJRuXN2dt9IgSNMM
	 gkYiOeMoslQGdyJuICgh26nLyVRyjOMaPWTCYSvQBtNBAvNXIVQTzzZ8GANrfb394Z
	 wxuT9cLI6zlG/QKce9708FPOB4B04PKlXLbE+jHk2MK+KHTXy3OhOehMUd8yikWfV/
	 cpm8y6hrpz0RKdn7ylQ81XO94EPZZtRjCRPZ5sorPpSQ8602S2Q8DqE3Iu8S5dx07/
	 04OswMQ29tPAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7163C001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169065612866.15514.3653418974651578327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0d3e1c2a259be71444f7f0eee98f1d91f4c69df329fbe98b965d4d4cb067d8
Date: Sat, 29 Jul 2023 18:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690656128
