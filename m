Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664081119
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A61C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687227128;
	bh=3aOoJao0GsVczUhuz4ys3AWL/MWVYgMQZ8WT9+czKdU=;
	h=To:Subject:From:Date:From;
	b=QHDnq5HylDf+RQLsQSJb3uXzQPI5rRCY/keYp8ar+zIIqWVtfZ5l0kllimR/htWbt
	 DWL6SmLmPipEsuMwd10U63qC0ocrSrufBEFThYZfKMCuYoeip/lsBpXo+NoxUtTq+I
	 bdugW+Hu6HhYq5FaY3iuiA6fSsfilElXBLuBrMyqxwya9j0bcpuYIjTiWKWUIvsxaX
	 0H69p2vAjx1ULB2DukF7GYZEotF4nVMj78uKyWFsBL41zg0BYtqJdqCw4f9qWqhzjX
	 KJFGFcowDVmbJ9maeK0BjeY78b2U8x37s6fR7w/RQ8h9o3ITWLX7wiOpI6cdMS2Wd1
	 FqAPxCH0Yb3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8685EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168722712874.27173.9207972732103004641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f3c735a3233d45180853862f235b9c948d592bbe5641bf4f9fa57794a54322
Date: Tue, 20 Jun 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687227128
