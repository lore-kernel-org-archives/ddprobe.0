Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6782E5232
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 16:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMEDES59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28BAC433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696697828;
	bh=pYdZwKEcpPlFdpdoXQilzHF2NqSqYRB9UScYOP5VGMQ=;
	h=To:Subject:From:Date:From;
	b=vMEDES59UjI81cQP1JTsMSKQUd4HsR+4T6b4M4EvxnB6Nw8Er/uIwE8AzoZQF/ZOE
	 3lwluks0v5fwxmK9Y0RPOnZPrAtTAtG5pFnWZsWuEpFnBIPCYdgwo+fTfXCqNpjKkE
	 j0rHDsCjxNklDHuLDrMQs+CfA1nmiBtsVSpDGVyufiziDxecB19rsf7EQF+oEhYkWH
	 OsnCRMjJvlsfaE6cA7jihgvsFIYkEBjrJ2BasuWZWz4KZHMfaaMEiS5/JQT8zFWw/n
	 PnNlqrlo8hz1+5ZGnQd05DQIVKOaVvefZai1+AjzyNeC/2pUqBPyYLZGNU7uhgQ+AE
	 +XbNDYuZVPPkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01BFE95A62
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 16:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169669782869.13679.16844050586863442155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f84ccbf3b37375af050465cf8a947d7dcb9aeeb38099099880c2f22f640e65
Date: Sat, 07 Oct 2023 16:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696697828
