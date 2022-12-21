Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E5328F7
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A1FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671648687;
	bh=2woLsIJ8gR7fgp7I+VBAUF1twNej5obsdtrw7KruZBM=;
	h=To:Subject:From:Date:From;
	b=YYYgRpriuMPoGAvXiFZvGOSAM07bFmUjIOfMV/96+SgnM5XE/eFKxqOHgzUyWtpQM
	 CWOn1bHf5QdJ3esl04LyvgUvH1yarYubNHvuW/KLmA9y7Tx02UmD6UtBPDFMedh0mh
	 Q1oPN1QSVXb0zVjmey+9lUumcuFuPe7n/jloJEJi2fZJbIn+b9Daje1rbdAIW1TOjd
	 Oy+eFrSJDDN8OYemBma9s0v8C7vsY1tkCN5mpBpuLq8F60UyL6d50rT0JMGlEWdBQP
	 8/SF9YhEZtbmu3baP5V6mHnvLOoXVAvaCCcIv66vv8L2MQBpVF3ICKIxnwDUJqhl6k
	 o1Bgd4DbMK7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DB2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164868739.11005.16724762208940793952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32ae6c94e81d15d0ada51eb429c8061071ad28a474793f4da06f59eab75a694
Date: Wed, 21 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671648687
