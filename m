Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DAB2570
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 06:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10242C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 06:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674888186;
	bh=ENPqdbirCzRata/0tYFMUSVdxPDvG573P5wHUvhszq4=;
	h=To:Subject:From:Date:From;
	b=uNpMwuWHbxYdlcNA7Y/VW5YUQp4NG/EWG+dry6cXDZx394uoqWcooR55jP7fuRxsk
	 hf6qfrHgCIHao9/WeJLJNCUXhGZ0TlrgmOkkmVPKY6ee9WXwcjX9TIxeRl0z5oot/Y
	 11Z4hSQmMJgDwf6WUoYSKwiLEa/wCFF8ZJcyIbgY/kIECknhWGsg6DLwHVH2htx6tg
	 ccVFWDH+KV/W3NCldGo1bsEpafY4tz8pUdQ0sYDOmn+bkBpCOq+XAvdaCILb1AgiPy
	 D5CDNVAwqCz66BS4MoP1jdPORw0z4RwTgCgACMMhVStlJewWmBp8VmnMwpTwgNKf94
	 RyC8x3mFCYXdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9917C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 06:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167488818593.18883.7123300704398450777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59c413cceeeca2199f4a7474f8daffb7a75bd8855d143221f38c6daadb429bb
Date: Sat, 28 Jan 2023 06:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674888185
