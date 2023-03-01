Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E5BA3F
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 03:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0248CC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 03:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677642366;
	bh=gicS19q/D6/E5JkL5qr+kvYet6PbYYaJfnwG5bdIjIg=;
	h=To:Subject:From:Date:From;
	b=SnibTIQYa4QSPzbrZwHaWSCsyu5sIeMSXjY2yrH/m4OgBU4ax/ENUZRRb2WOPhW/N
	 bcy+qC6o2P/y3jMpsM/i+9Fqbpb/1veE1qZuAmOMd0cFCi3GYQSECDEiD4jE2engKK
	 nECk8NvB/B62ZlHjpzwBsis5ADnKxwAf3H0eXgkMGrKlAvDUJTeWIdTShGLZZ8tRnw
	 g/lCRIMfcNZot1IXW5ZzLPSuUKf2zoGfQe8uhATYzuT+EcRW6pkTXSRjsWWUhBM02t
	 7CtVr0Rk/3dSVzvSV2eg2qIG5hkP3NBLNhfEaXUOqXoqqTulYCMKGy96ygc9Eh3u5c
	 NNrQaloSzrU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D87FDC64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 03:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167764236586.29326.17541550393353758712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e712ad6f856e4c979a3ae8c00fd11a9c8bc32472dc48b43af8ded3d3097b99
Date: Wed, 01 Mar 2023 03:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677642365
