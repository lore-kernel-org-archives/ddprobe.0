Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBB97C
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 01:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FDEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 01:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679104325;
	bh=MOl4ytB8yh4Hbsh6pqeAbty7jh4kpEcuEbZYX/XF9Zk=;
	h=To:Subject:From:Date:From;
	b=lAGHPGnBPt6EolfwpouEI93IARWy4JO6BexCPQPBIpJ3bQxoc/AWq+riyGO+tbs0w
	 ggTNAfARy+vwnDCqV7PLmtLE0RQTD0WL0kJGM1pSIjL6+MYekoXSJIwKvz4dKrGXL8
	 +bUm9QRUkYfOUNcY3jPzngZMJ+xdwtUrkcliiuH3X/1HFBIwSSEzbqUyaf/mz+v6mq
	 Acs5DaIP4X5CwTCSjw/skkRoer77WBuYl8owuNbwsIe1g+6NAWbkWraGuts5lsaA/v
	 k4+WZ0vvs4C0s3OXNHm/pNhuGeCm2XAWc0KlWWV55jwJbsXWdWJu6FI/7VyWOAWZb+
	 EJaUJ55bOIj2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EE5C6FD1D
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 01:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167910432573.18102.15731488403148725178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275f474947276beaa23c51384e1bd99b25b08626ddaa2ae3f15114e10fc76fdf
Date: Sat, 18 Mar 2023 01:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679104325
