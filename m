Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33C97E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73173C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666231253;
	bh=81udj81yFtkj0NJOV8QUVVw/VR3P0DFbVZzF12eI8YU=;
	h=To:Subject:From:Date:From;
	b=YKINTn6PfJ3hCo67LS/fak0Ofts9hFSAJ2FPbLg/gkr7sm113AQALknYIJP14aBLW
	 Mz/LpgDaopAUx22y4248T3Y3lls5/+IGgwiRcEQ7sFDbtxWbriAan+VjLd5U33xjCS
	 0aujKQOKdaEOy2GKfx6NukJwMvAeRHzZJAfTsw9wX6347Zag6iNtixDoUlkQLfqQMw
	 7EU4GwxXi94oB8zAfSXsXr+y/ASpHLqOvh77j9b+4mNW8c0/tjR4/vyHj2l88bBG04
	 p1ewdEdSALw1IDgVBqpKcfjlUPjOocAWD+6/u/w/3qFtmFcOOmAo+zMQeOJQmwPZqU
	 SzMiwv8hJUGVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D31C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623125333.2562.10092981076926684434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442d045426c11018099d058b5f79a55276070c46278adf22c9878b8b8ddca5cb
Date: Thu, 20 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666231253
