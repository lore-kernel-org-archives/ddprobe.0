Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724A21106
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 03:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBDBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 03:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693365248;
	bh=HLQp9ooIbTRw5wBXCqrCyyaskNzCHRvY+wBySagacwk=;
	h=To:Subject:From:Date:From;
	b=HR1XgSvFYRJDgYz9mqd8JgBv76kReQ1xUMqkGjapcv0OJrZtuYyBTCiARp2dWyv27
	 DVB3JujEad5HtHPC7dKZvmcKOSZdyrYLg2gCq/oQLf8XZb5h5Ob4mB3GmG7jyrk5YX
	 3TbGLFuKP/K7HNVnLVo/V3M3iTDW+wTGtl/yuyuQxt92eRrvgbNlYGaZ9/ukAwe2c4
	 3QZPnEzR+bIAGHLV6G0MrN0GcVF8r5+Z8LIgsW6pYmqxeUcA0ec6LEz8sJ5jUBGuRr
	 TCaM2FKdyqP+LOns2jmiZELOiNkZfr44x4o+ZLWJfggbVRypF1DesfKENSY6BOAic5
	 Y1f1EyY02XYeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE24EC6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 03:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169336524876.12203.950003483265018145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6866c99eb28f9e5a1a598a17c224e4d6accf7110aec46dc6517c71ab8ac473df
Date: Wed, 30 Aug 2023 03:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693365248
