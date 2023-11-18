Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252641A70F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hlg6tDaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83631C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700341096;
	bh=eWDFUbGeuhJzpWMhN8GlWeQjHGb1Z9Go47tousIQEt0=;
	h=To:Subject:From:Date:From;
	b=Hlg6tDaWO5xtyFUoPLLnsltPuN3JzEG3WPsaWR1WmpjyzygAoORnDcX0G0z71FOwM
	 cjj1cMp8AxHii9dSdhAtpQj/cDjKD07YFwnplKhdfiPW5VqUI5T0edLrYgT4nNNJLX
	 2SYwqMUomzjnF5RKe0/bm554AEEhGZzXHaDe0EvbjN8zOmB0L7x0IyOBuqvw/hRty7
	 Q/7EaNzlw+85kA0SiI9eK3R/p9dBVu7Z+iX+pT5hG8ob4XK3iLJVg+pDzfzheL2vIz
	 nRT7enB6AWAls+SJ607cDbbIz3hBEzJTQNfOZtn08Ha+fDoJ2lfxSV7bSEWVmCIlCF
	 9y+w1S4v21fcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678A1C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170034109638.6940.7491798847731230450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13755d4358ab7efa7a4077751f47a83214a4ad68a19ff8d82130161649ff30c
Date: Sat, 18 Nov 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700341096
