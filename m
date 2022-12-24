Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54946ABD
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7433AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671918687;
	bh=XrHup4cUfpAPq3hXkJtHbK6ezW9rY/FXKvLcqCSxjRI=;
	h=To:Subject:From:Date:From;
	b=LAC+ZSCjrKm+NdgPau4JJLK4vhC/Bhi8+scXVq7C448afh0jPPvNtIy213W2HCMG0
	 nV5ncuFw6un1fWIuQYHNdB1ILt4pXNgusQ541HQTmlsJMR6dlZnIJuaMwzblV49+0V
	 cZbu2xE/bjkukSULCle8Q/J44yDtS646X67s5LELAlMwJ74ml5tLQLtJRKMqF4Fcrz
	 NnYzqiXy5X9s4dC+efWMwp10HJRu8pCQB81gwdr7xNz1fPuELGrrdeW1ATFN5RBYK/
	 WSl/9I/qOHpjYkCpZMJwh2++/GPxvIGaUp+07TWq/rXElXKqvr8nbwAd8diYfUyafX
	 +dY8+JdQo1cvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8C9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191868737.10726.1630545332671373615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583f257d4638a6f5d8c77f86bf473aeb0599cd03b069eef3164497acb9525578
Date: Sat, 24 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671918687
