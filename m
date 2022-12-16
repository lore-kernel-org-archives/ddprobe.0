Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E49181
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8092CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671150087;
	bh=8I6d5HDOyeDDhkcdPcl/GWm2/Wa1ilphY9fk7vQ7FWg=;
	h=To:Subject:From:Date:From;
	b=khoUSALhf6XjSvgY8HbIoTTHsYVVIxer2ePnUeAZTe50yer+3nAlyrZOL4Iu7cC84
	 NMzilqOAXX6TQTOHYSS+vspUzvHIYNNU2hgLWlfpxmQsfgrozC9c5/5W+4B22DQT1b
	 O5TnUxWGExW/h2u+uYBr09t0+7FtuUFJNte5ySNd/nDqNsfv9ehsCh8GTZ/QiNCWm1
	 qzQ+7QaF89JG7AAE0lvuJN9oPAtbULCEU56VSYryxN4E4oNvIjyZjb35LcJOm1jnTq
	 gDUpmD0k6QrjdXq9MJuICc1d4S2gd+aXYaw7cIH9vkZMN0I4kcOV7D/YXROnj3lptB
	 DjuMsxWCe03hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE4CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115008738.18868.2802931273090194379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf2dfa5e5981d1b4a66e37cb3ce876462e408ed4fa0423006d0868d684dd214
Date: Fri, 16 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671150087
