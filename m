Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D903C084
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hz/IrM4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837F3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698440896;
	bh=MsupMGSInP+lXTtIHwWA8TCf0As9woINziXzjdp+FLw=;
	h=To:Subject:From:Date:From;
	b=Hz/IrM4hGlEafXKoB6vpkOiE1L9ryR+6HezBhltkR279OApL+5Q2qZ0tjShSx0au4
	 JlILv9YihSBmzaWo8zpQ0Hk0l6LFD56t4vyawgwXmjzuvOfXTMQf/dC7bR8MFoKzAi
	 OViCHHRkaHF6jlzJYXo01xcVi8nVhOVY5srbLvSQhghkVpJ6DQKDZyfiIT/own6bJW
	 B6uEztJ/4dMmWmwMzZMbIplcsf7ybFgVQyHXHVzUGdD1ft6B1TrP3j68j8akUL2Oqb
	 wrDSSFVzVLVcdUoAxnvaT9VAdvhSFdyFySM8ecHFWHXk8Fxzyc9iwuLEdrAGhSjIX0
	 DmkNUOMzm/r+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648E5C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169844089640.4896.651514648939309270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc68fd214a7b6ea2b9ded807677a50142693a4018173cff79f8d58a4aee6889
Date: Fri, 27 Oct 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698440896
