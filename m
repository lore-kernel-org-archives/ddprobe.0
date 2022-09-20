Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73F3A55
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B047C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663677653;
	bh=1lqV8Z8k98GSifUGLNAH2pt48Ku+J7+H4Ny55seU77U=;
	h=To:Subject:From:Date:From;
	b=hhYyGnU0aYat6MWM2uKp82Ici3oqSW3y/oCK/mAFvkLAXSc3ZyWnwjw+5YdJ3Qnbj
	 vVf9ol2LqMPRVbVm0IFfAaARNfjP2gGmCebavQmA/Y9dYYoOEj4F1AbXNwc1jLNQy5
	 sK0dL1PP1TkecbDSyBMIREr1sj6XLDTRZ/D/wNa61xIqrFdDerSYxBuuTwf0ncnlGg
	 cnbDzC67RtCnW7vr7dWFF92cwti7a7M0KpxUsIfAmEKsaXt2D+248521JACIA79eaD
	 SQqOv43RbLaw+2YGLVOIJ0+mWav8dvqEXZcGeZlIeVIMZe0Ug3L6EjzTwcYZRjx2YU
	 HPBDFGv9Oq9ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535F9C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367765333.13242.14698417921172760537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b86cc0a37c31e70444cb6b35bc890ddc41aca2f53bcedd9e62fbe75c7fc7609
Date: Tue, 20 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663677653
