Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D4AE4DB
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43BBC433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680824285;
	bh=NE7X9GomSQp6/72Nm+oriPw0MQ1w16FURqOxYamK5VY=;
	h=To:Subject:From:Date:From;
	b=XTP6ZwftdNB8AHnCV+CFuF/vN5HqEL/YSXaz88tWzV7O1dnrGqkMXK3a7l39qIjGx
	 yo8jylCjCByahsyPSScO9ZBjDxUIiY6bgn+omC/zW5YECD4GQaBa+qjXwjrf4NBqZC
	 wqs6vl/lxUW6WZoAnZUldqjwIJNYlsipjQhj6kUHdu4zm+i67/Coh5/j1F5CHXNDF6
	 +p12MlYp/gbuJOM/aw4T+nm6yNJEf6fR2yMNPOvk5cOnrxQrdvejQMEZo4HKEimd4z
	 c4mkeyoDOU2jINaNPrcfZyD7zBt0TJKBfwYmT4Ea2PnzIuyXFBl27oJjjVRz4EnQwM
	 6gqrKJya7ClCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC639C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168082428575.31656.1363949360011138745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48b96581342112c11ffde118fdad939117035a241c56c3c7c936f1bc7b820ea
Date: Thu, 06 Apr 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680824285
