Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58527ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A609C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666605053;
	bh=PjNg2bKOS/50LTU7ECg+ya7CUsjr9YV5/BifnjD+2jw=;
	h=To:Subject:From:Date:From;
	b=GLctso5IiGWRX0EG6RBGzwt4OksPZxjrBxRofLAtpIdQFKDPmJnrP0FVbJ1q7SJYU
	 +rHnkcWx2O0jCywO9fGYH9PvXnOuD3NiLNSVIgkNkkzznm8ycbPClE9uuWjscTaQN1
	 31ULh6C1lVXNeOU6Tx32QfIiCjcj+0u1migMwZLQa9XopvQ5wMcFriIpigXGcRe1Ey
	 +2OO7SckqAYGAEGUt1eqnmXgFnXrRgjIpVyxaML1twX6Tk0M6sgkpHWC+jsH2MSuK+
	 rLloUcfB9Qe+SgqJ+FTk37XHwUHBNtk3dnskSLKj+lf6tqV/iYJOka03SsIIsjnEnd
	 /iL0/vbO6epzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB36ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660505336.29753.3456559440293318390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b685a4dbb6ad7e112faa845bea595ee36130fe2dd44fbbfcf4b69ff8b37b14c
Date: Mon, 24 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666605053
