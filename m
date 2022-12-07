Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC88733ED
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E99DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670446254;
	bh=61UonMjE/2ZPmCJv4uq6DsHjPbgXSXn6YTxjefAgfK8=;
	h=To:Subject:From:Date:From;
	b=cDxIS7UnTiG/VoGnuWJnV/tggXBBxfjm+rfJ4HfWGZccdBEO3UrCE9TG4oWoIQWRH
	 CsmFfTeCidMGtJaZcWURr2GMp5CCP382cZRf4ONSjFJRNMbTC5UoeV84QiyYo9xkMh
	 /CSz6vsdLn4MZj8LNXChRjtHySygAPhKjb6Nw5zn9xHv8X5XJsHjjMQmkMeMWQm3RI
	 E8OIMS1S9+po3JBD7b2YU5B6BCeOHT8b439l+05IZ7SNrYWhnR6k4yhvHFWfbQu3aa
	 C33bMWJiVAAQXZjbjwY3Rd1tTik0c+2pulh5PORpxQhQfqpjaJeEZmkW0LIU1nxxqM
	 XtqIImUjvveAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52109C63709
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044625432.26616.9511772959269125569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ba62a716a33b6c03a248e79a03ac0c4a6300f6a785d4aaa6577839f1f9957e
Date: Wed, 07 Dec 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670446254
