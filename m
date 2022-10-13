Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27E93D9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D999C43140
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665684053;
	bh=FC3LrhcoI77GAqynJDKhpqiAZb7lQePT+RwRnuXXmmA=;
	h=To:Subject:From:Date:From;
	b=HMadvrixd2fAlBMe4ZqNLUcplLafMNslMb9GkJrFMP+UF6sydKKQ2q9Vk+3YPv/72
	 mgIAHb+d5ftbQtsKsCXoJUfVg4sv0Yua8ukuOSyg0jijabHH/4lP0JHk0mBQrn6TBm
	 LY8ZZzDfiMboRcvjrW+c3S1XzdLlJx1HEawxQr7zOI7CrTzBmoPGjmg749xUk9zK1K
	 NvJXApPc/8lAXHMrxWN/cC+vBKHCJmVncp1MrvQdFsknv2vyha4at8UofTcTF/K4fk
	 n6bCXPsrtf/2oXsicg+dBXXNn9iU358k8jkZCdVHAKZsniqmXvQt9ZiNgE1D79/XFX
	 5R4FRRXqu5q0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E85C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568405334.21100.11609422019882366498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b6b8fd99afb8ddcda52fcb6191724645fb0f464547a9b26118a6e0a0502120
Date: Thu, 13 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665684053
