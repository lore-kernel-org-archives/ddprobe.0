Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD2C3D0A2
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xise7R0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800D6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703020696;
	bh=MQy9sRfTsLhZmkThaG0yZ2ItYkrAA/yt2XF/Ms9HXjM=;
	h=To:Subject:From:Date:From;
	b=Xise7R0O69K/cFWDI5vFCGAv0UJNLsZWr+puxmuIlRq0LwLRWTCwYvruT26n4Y1Sf
	 oWUxubijcb0FE8d2tCRLBrBD+pJY7/lUZTb+5dNPqWIbsbu/DUSIgAULKlk/UJ7WsK
	 ABu8YlYDDXX1h6gWEwlfZ30P71axdDf+CAYCWDD3sutX/g5wdZut5nrz4ntoQ3Lt4o
	 bW2sjQb2Z/nn9CydDMuc9ZOvsizTTAPWWCbr9RmKvdrg1BYn5MEDtrcp4wG/5C0jwa
	 3CVNefW4LSxvkNGkRukFPCAouC2cr0oUuHPdfMRPYu0ZftyY7kS2SEVqUJSJiE08se
	 VyigFi5byp1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6281DC41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170302069638.8763.12428289653036822545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa84102110cf3645d8c83644dd57e366585de8f1693a26ef25d1d1308169708
Date: Tue, 19 Dec 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703020696
