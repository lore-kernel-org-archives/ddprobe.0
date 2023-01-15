Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0FB10E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CCFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673775087;
	bh=uFvtbhwhiBsGqBRmXTdCMQnKCoPhoaB93Qr1nToIKqA=;
	h=To:Subject:From:Date:From;
	b=QQQMTGbEgcTdCJquwrXpX62I/r2+ck0inTfU94rdSpwn2RkR8i8mZWHFwBPOYmf2s
	 aUJW04h0oxw0F4OU/zkDwgN91S9q8hJ4bFTtFNO9BNHOUuBUjMIfgHsxEV7gQHLXcO
	 C5IW7JdYwWASeC4Vmk7V82miTrR65+fbE6Pa4gm55dvPQt5y4ilMdq9EYHqOAZFRyZ
	 tuUcpuahqiCFzlS6AHCAWqQ0R7RwdvQYDXvSfsjDotKPJ52vE0DkQwYCwNnnxpFZYy
	 n186U+ZYxBAfJsIOjig1cLyT/4RrWCQDqJvHO1IkHg2b7B0th2psW35qLWQgj/e7pk
	 DGYOjiMUPqxGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AEBC46467
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377508740.31408.8053184159394494297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481504f5009b14294e11b4d3123e6ef1428043dfcaa4d013d39d8570aca60111
Date: Sun, 15 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673775087
