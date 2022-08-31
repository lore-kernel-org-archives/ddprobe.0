Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C147E5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7627CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661989253;
	bh=rbeliJ2drohBKOz8wapEyLOtpmhk4D78b6a4pr2P63Q=;
	h=To:Subject:From:Date:From;
	b=M6uhDSrZ6CAZRrJ264gZkkcYeYVa6yTA2jQJ8j8YoqDZX0PKt4Amh1HvvuaoRHWIv
	 /X3qpCJCs0x2PYvBMXipZdtdSE1oqwKBU4F/i4wtHd1KzpFEa7fbLOnY1sJu++v502
	 OJO/sYPWBq3c+B1C+ryP0JG6sY9PW2vInEXdSZbU1VAwmQEFz+W34aHC07qHYuyTO+
	 C3tRGSgRSdUhLCWXlqf+f8Oych8IzCtIxrVAWI9MDDQx8DFcwZ2s5aHI6lWTPSiyEL
	 ntfIdezL7/keMWjcQDlvU+bJTfp6f4Jb+pASWUgqd+738L4RI1OJN3D0bDGju7Z7Bm
	 dBnxlLVfNL4vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59058ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198925333.27864.3083295108963835853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ba5ba75a4276cdb2be85d28239d73bc6cea03b613f0763309ac907f3e74ce3
Date: Wed, 31 Aug 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661989253
