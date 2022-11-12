Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E8E63CC
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBB6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668284454;
	bh=q1u+9As6O91K20LrCDWcUFof/L7T9YgtZHoa9WGWrfo=;
	h=To:Subject:From:Date:From;
	b=M8q7e2ODq2wZRqh1tltTkJzibfbNgrQ6uqyCJ4dkvAoX3y8GJqYfnbRLdjavVWF43
	 fklwBfQ6s7F/vzXYZtUS493czWD75ejzA5PExuw6U3WRRmyVD3y3EtL47EsCxvJwra
	 BaVjEhz3g9FT6SynAZDAbmDnL1fDh3O37Wc0PUXOiW4ttK+JBUGd5cf349od/+1BEB
	 iP7AmrH6o5PjBMNq8K3ZaTsL3634FSCiMZ20yBKdvc+qMpX7Y1jKB+6BZKHgrWG2Z2
	 NAaomWwfhqmBuK5ZPDGAcexCnvrNzShvytjUEdorGrdWsrzvBJyMjcqoWp8qdc8Rri
	 54Z2+uyl1Ec1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5BBC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828445435.30743.6393292498188591803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00393ecea8d3c30086cd8f46a5fa51788aed81efa7c4bd4ceaffdd0aa3c419ba
Date: Sat, 12 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668284454
