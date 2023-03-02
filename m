Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF6DEA1
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64ADC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677720965;
	bh=eo85Sl1AU1ijzxRdqj2pN3/J5ofwHvXYb9ZLeYseOIg=;
	h=To:Subject:From:Date:From;
	b=BjGXlST2HPTtvysj+7S4v0iS6BkAkSIxPXhJyaP419du3tDHyQ6pZLARhnuZ4F0IU
	 jtrf7KuXNKkcixb/gzTTpe/eWlF+Id4eiNyOg+Ord3+bj7NZnjRr3x2/B/rSE5Fl/o
	 F0YzSOifx392h5HqmtIZWFY4ov6eWbpJU3q5x4W2agO8h/DU9HfEA9ZeDGKFSs0JIb
	 2zH/ZbIQFRUNmBuYJi6AjglqRkAm26+yL+s4YYRpJUPw7UePZg/5j+dr4xYzNkZvCA
	 cswYO2mDIgxB2JxwJDo7Xd18pWW/owDnb2y/umKRy53hhCm1HVU6YdaK4TdCPZQhL8
	 bXrweK808JKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1EEC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167772096575.27174.6864015732404704196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea14c6391d0c5bd18cdcba8aecbff29f399fecff06617a9a6df3ad955f4d161
Date: Thu, 02 Mar 2023 01:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677720965
