Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BDAEA2
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706EBC43140
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664358053;
	bh=gawJEU1BFTJKKe+ro4AoxgbiOg7r8+4bWoT6HvkHM3E=;
	h=To:Subject:From:Date:From;
	b=Vlxb+YWCa+LAUaI/JUEVBj76BS5zBscG5c5MO5xngEgvuQRHUrYLgNl+liLkNaoys
	 V9Mrvu6BISFu1MmA/601Rd2snOlIwUrfZMl8KIt/+iWYe9t7SPSeA1fJqGVRtXdCKX
	 WKxhcEnPw62ujhKZBQ/dVLF4fCj6DNm2z3NOytGGBs1KIYV4HheeDqGXwaZdl3VCD7
	 rrPPy5K2xe5Kvau1mizmJfFZ8MIDicNzlhvp/y9KjouoXlfd7bMNr5g5Bb8pVS9Idl
	 5iJJbKII9DEE1KKVNUKaDK/kPi9gnTf4i3obU797Gw8dsjUlh1AQV8hn+n7kFo+53D
	 9edVMBMbIMhhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C8AC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435805331.6377.4147185676110841542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e2ddf264122e5a67e9a7214d52109231dcbaf99637a641ec81162cd814af34
Date: Wed, 28 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664358053
