Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DB728FC
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 13:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5923C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 13:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679491745;
	bh=nbmAaZTRjElupwxjG3eE/RyArRUAuZW0gcvHNoqTwR4=;
	h=To:Subject:From:Date:From;
	b=oYglb0tmbYAI9bYOIaKfvaQfNi8k1B0fautH5zxZVotOMH6qII1Es7Xix342OdVUm
	 sVR9Q9nCLigQpXdKR+C6sBHP9EoQUEY231VuWGlZFzLWgWuVBT73vN8bCONsfcPNCL
	 PR0MU6xtfsVmVfVQ50yZJ1EzGSgyc9S8fgYfY5GVRoyaF7liUeM0jxQ5tfV4nNCSer
	 fPyeCQ3CnoIDqCKfddI3KH8KUD+DnY9/JEg3MJrbJOUJyyHRI6nuH6we7vA2JzHKLb
	 pseSkNLaghy5BFkfV5hOEbXIOPYA4mPmOFAWg+3hh90oC/N8ReAV5YUDhcfOsrFxfc
	 vPkK9Ig+Tuu6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB33AC6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 13:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167949174575.29767.6704523019736038582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e2329f94d3c30fa9a0c9db173eb11dc60ad94bfced3ade9fca222a202ed5ff
Date: Wed, 22 Mar 2023 13:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679491745
