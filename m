Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D777A2CA6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D0CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671564087;
	bh=jTiXzaOyNrRXfD+u23a7BOlX6aw8q7krN4z9sHn1jpA=;
	h=To:Subject:From:Date:From;
	b=qSNxWmW6wNlY2yKzbKngzGEu+XhmM+mtAtNh6NaQggyO3E8oItbhP8QtjD0UEmOIs
	 TIvX+aSP58fh/1aE16Iykmq5Vdhakvs62t4BqtkA5wTqWEI85OrkhuGs8/KkXTN0ds
	 GNjaqYyQ9xEu/fu7dbbFI2yrSV6ddMmwpYeF9T3eOhcvnooAWU6KL7ujndE4twOJnZ
	 N77FFvMdIimDN5egdiYQ8sTiyRV4DYBME5CAycuWFGa9cmlI0OV5rRa2YUXNWhVvBZ
	 7c2+y4E0xvBAbjzzxrqjOEm722wZoJnV8SRvBPCtuNU90NL07pbMBrl+o+wEmNHDxO
	 LAvAN9OpbhugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65831C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156408740.1770.8054018134464835981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e739ca3ef836bb90a8d4d1ed7a5513000a2732a792f9347b913015822ca2ed13
Date: Tue, 20 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671564087
