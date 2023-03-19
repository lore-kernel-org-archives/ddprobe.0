Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BF4A35
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 03:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03B5DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 03:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679196786;
	bh=+AtIvZZxMSeGpa0P4XFP7CDF83krYZckKvH5Jwye+hY=;
	h=To:Subject:From:Date:From;
	b=E6Lqq/SXQj6GV7h26MXXGNppjTrFf373xSaJCxam8r385wIcgwf7iDU7oJXiIqIaV
	 vSQOhA3Mu9fzx94uTKj/pAxLxS/sQ3sowPSNF8w7m7+NbBIOByfXlcn3pc0gJJwaA0
	 170tw3ltdt1t9belHAaQKEvnQqnNbWtHcZyQgT7Il8vScHVLogaeYOIIvoN9b3qCb6
	 r8aQ6AvU9UuDm9JjBKA9Wz4Bp725LerMNx6Iwlzam8SXySsqjhSyvmHui/bMyfryDR
	 rb6keYXpY5ZDK+Iix4fgn8kwpaE5s5xduSy6l6YaOfduuXEHKjGMbG3l6fXHaxgfDx
	 O7Gbu306GOb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D51F7C7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 03:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167919678583.4117.3771854734251959933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a4bef6d5ffad22440f17839266301a78185641298e7aac8a34e04c6e197daf
Date: Sun, 19 Mar 2023 03:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679196785
