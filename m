Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3CF63E
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 06:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D1EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 06:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676614985;
	bh=3YOWoLGHTmGsiwVYsw8lNv38ZxRwlAfLjm0IktpYPUg=;
	h=To:Subject:From:Date:From;
	b=epI0Oznz9K3cLkJ272kSJRP9XzCDIPL0yUiWdittTZJdJJZcvXK8ZiYHKfxNUQT8k
	 zOhTCiZjRMmKg3GO4I5QqdQcFNsRk27j+CzRi6CQRwDfDv6/uLprn3n5E9MItBS5iv
	 UjpaH/AKewq0tLU7prnPg6yaLJ2RO/R+cwMxhU5dQ3v8XZmeTR9Zq6lb2p3TLNKCH2
	 qQ0wqjs3AycvAzCE/H9oxid/nEtB3LTQdTUSsmDMQM9pAXkbdX6ecW60QsjhY+pxJw
	 FyFE693E6aF8zE7V6tiB8SeHQbvMs9KgQ1tkyzgQFFDGB+sweP+j83b8GacAdiJ4iD
	 4e1GA6SLffkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DF4C636D4
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 06:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167661498579.24461.12188501831689421352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f2761e6b7f4422c9fe7f7d69bd739cf25a2f65e28e2a45da2b861a14fc4cd3
Date: Fri, 17 Feb 2023 06:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676614985
