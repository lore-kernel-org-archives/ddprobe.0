Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D614A17C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCA1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671846087;
	bh=68nM5xNhKMVjaOuqPu4ySkhIXssLfMNci7OK29H1x+o=;
	h=To:Subject:From:Date:From;
	b=Io8O6DgDtAFk5NPDMcchhqIzNYDgAKD6S5q6BTWINb0+d6FMiY1ZstVMnU2dUYk9x
	 8Q6fDJTwZ++ZO+PnIOo3XkxhPbEk9MZKj8uB6Nxgw38sG5Ca7dvFDAVkr7COGpcYcs
	 nuY0GClBl7WS7U+EH+b5I5o5tkgHb6wUHVwtn9h+tUFDvAMVEKSE9aXsjSQlMnnxWD
	 CtAEbbGC2Va9w8ncrEkvKWBBLDsxj2xOb9ESSJxgNfYt4gHopZavvyT/UatGX3SH9X
	 BsQJbBvT9lG8JeYLTWFDw4xXvGBgPCy7DcOVzDS5fF1ae5KT8V6sjBaQ2SWo3wmFQ8
	 dDHYA2hUY2wdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6433EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184608740.30047.10371242019878426106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc2889c4c61a677e4582d3656e8da4694a781db41ecebfbbecfcd32ae5b7852
Date: Sat, 24 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671846087
