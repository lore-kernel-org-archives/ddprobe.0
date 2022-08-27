Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94AF7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B75C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661583652;
	bh=288k7pt8Eh4Ry0naAfWESjoHm5pPQwYAogp/m611QaQ=;
	h=To:Subject:From:Date:From;
	b=MIm0Md6Cwnll7g5KHl+l/JkVFny2ZdW1suYJBXfYYL43f3uoyD8olJd/JjaR+//UF
	 rVKW5xE1XuN6eS4cCXAgPbQhEJQKJVjkKoEgJshJrqEw4BWZMurHM5iQ3CquYJHDGV
	 VfCD+gXQAs9DpLv+1LsqztbbMvd2AW7HNNE+ItFV1jrboK/lKpTt9qXKAiED4419DI
	 mWyK8sAo3nLtuuNjgPmJH8wllNQ69tGmMAUcD+NO5DsMGfudXaVJ07v0oWoMg5B7ch
	 O5EGuX+ShQaPNTxmLV1ynOI0uB5YmcUiBgvXa1B1cPBxVSaRx7P9IMOmJ+p3yNI6kT
	 4mEapubU6g1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F65BECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158365236.6858.13925172233910584830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d3dc3f9438ba3a64492d02e566dd0e150c41fef8a49f38d458f9a958a29523
Date: Sat, 27 Aug 2022 07:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661583652
