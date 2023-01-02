Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB282F2E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EE1C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672663287;
	bh=GIBG2DgOfyO1UfYMas00ZOPmnJHvrXvzjcpa6w2YMwg=;
	h=To:Subject:From:Date:From;
	b=hHjaXkB/vuT6Zru0PlSNDPu/2N9yCj80Vg1+zxPOIwDT9HikZEw+qFiK7l4dtF0Hs
	 VHEEeuTWdx9SstUjbVGjITRRxkszcEl7wS2UgkwLnxllLe6UckIiQ7/cRJpZruDEWd
	 N7im8YP5qa+9KX2khdpHb/Pg3F7Gg6mUuo9axZivCO2VBxJlsbjriDE9rz3iy4Xh9g
	 DqZO4Ud+/qiMuf6LdNvS8Ozt2pZ67SE6tQzx0GNANR+LdYkYViWr9mtyq4S0nlbtPg
	 Ijvz+kVEY6oYYW+R8WZzx1rD/kPDthJyqyPJcgk5p5fqT5IRLwNprjlB/gbH/Rzuf0
	 DKVJyoePGyZXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671C1C4708E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266328740.341.14906209289306249347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d4768f10fd480932221db8818cde5a134679d06a2d817bf439ce753aac0c67
Date: Mon, 02 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672663287
