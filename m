Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEEBEB27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B6C7C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672944687;
	bh=cCRgis/vuokrLyxm4t1LluvsluY49I8Ix2hC5tZPYC8=;
	h=To:Subject:From:Date:From;
	b=WZmxWNw9cD4EkE+1wLjEhADzMDJaS5XrbdA+ONVp8iKoCGulGie2f6hx8O3V244rr
	 8mcSRqdWKJ2vyOw+oOJJ44xSHT//dQyKQmwBqo1o097kX6Ssm06QrosreJrdlZvGUL
	 z+GBdXUD0/4+8zDpEo+eSjIU8cs8dpxGVkaCb9XROLF0oor5DW1kTFKPhTW7bF6/KJ
	 KaM9ru/IOK7E5VyaLM9BdxcG78tXUT61ecYstJ/Oaa7qbVJgzIh28pMeF6cVtnvoO8
	 hTJtbGiXxcz20jRpp1D1laMtHWDXGSmmgVK0RS1+BUe86NWwG+WggP1LhtEIe+5T3c
	 wk6GTX4R+PQag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B4CC4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294468740.29363.16223249081676382213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6feee80ab7cbf95f4ed773c7696eced889b9d1cbfc830db3e4563705855eb02f
Date: Thu, 05 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672944687
