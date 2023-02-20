Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F987A54
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31D2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676882285;
	bh=FP4mRJWRrrojaclFzktXMilZuTpouyWG09WQTXEZLrM=;
	h=To:Subject:From:Date:From;
	b=AgCXO98JZLVhpYTJDnOrj+Ap8ismNqQUGlYEp58OrYi7C4ormPOFU6k93HBXFLmD6
	 eP7PA1cUWhDnzGdHEZPTPvm+xxQoL+Mqo74R25CUcNNN2UZ7sRtc0W55Jbp8+lpROT
	 ElpmFXF7b/9NruhllCmpxOwbAMYrLOjSjH5AVgQLSxZSSxjKc3PcVll8+EmxxjR5bu
	 dUVfepkghClWQRmd6F9Af3kO5dCvFizUhC8rTPltz2qfFlaf04GqUxfJpsIcQCDsPf
	 BqzUwnIIzKaETIOM71oMCnoFEEXUTeHsDYziruUOcCDyDNzXB9m7ntEbw9LDSen8mT
	 dwdF5MqkugJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B05C636CC
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167688228573.26813.15832629995559752782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e81f8f4878788e4b23ad3cee7dda6afb5f1120d90ede603cbf9e05627296fe
Date: Mon, 20 Feb 2023 08:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676882285
