Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C1B443A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FF8C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661701852;
	bh=WbIi1p47FsanyMPpLFzwB9A+6xh2ZJm/yoX9Qv9VqUI=;
	h=To:Subject:From:Date:From;
	b=d9cMK7tWOKLu3KwGYy33dhtiPpHzg0qFjshLNqI1441dtBxIWTpfC4Zfmw8PATaqx
	 ovKOcBAKbgzeJjm2gluEjdAMrXc1khNhIiyVr0UG0N8edkhIYNe0QBNMpX47qdoyeC
	 qSQInYxPyOomZyexoECq5H9IQdpkN9Q4M6nVlPH0S0PlNJrJL1MqAJIodqRkRfwRCO
	 zNypqZCByfmnyQs4doDjhUJaZKDDtEJ8n6w0JAvPXM7kHPJeScZqYGEv0xB9tm0HqR
	 /FrXt3df9GxyoZmIIVlVBb7hWMOjxWq5Ct2+S+KB9GTC1X43c/tsIefTxpYizXWXTk
	 3pMQpQNQ9G5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CE6ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170185234.9271.17326754067352912788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937afe81811ea51df5bae91e426d90e983396b0598009bfc1324917c45315dce
Date: Sun, 28 Aug 2022 15:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661701852
