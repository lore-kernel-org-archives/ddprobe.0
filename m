Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7537C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79094C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663399253;
	bh=JEnV4YjhqStjglWemcWBsMnhpOUOEIQHB08YNOqq8fU=;
	h=To:Subject:From:Date:From;
	b=Gxy4fjRJUXFvHUqxXcZH8KscG2lQTSL/AaGrsRw8qMbkSXL9W9qL4vHdVE39m+rle
	 +NtuA8SOxKDel/mM5zw6ovr0yWEs1m/GQOMD6OTzYMo6j31KMPJf5Q9uM2wYlkyRP7
	 81nlHhPIdwObYJT9HfIvTnkv47e0ksTscVb3mHL6KhX2fQ0FCHMp60xh6VZXWuDEFs
	 JqFTBwYNg7GhusqZxKluDZ24SXtOU8n9uvqQFhr4zxQhYhGNhbsCIWb9A++CEkHMPE
	 /Eop0RFkqfe5gbIMTYsxCCXjFYaZSt5gvVAkwiaaMMkXSpMwI3xbRGNBZDo8mnaz00
	 75Z0rZA3KHH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A68FC6FA86
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339925332.7600.13914041091507855077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ee7d6444c1541fdb6ce39a7a08605f44086b4197fd00d7e76c931be68dcf48
Date: Sat, 17 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663399253
