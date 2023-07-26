Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 791561BEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 20:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB35C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 20:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690404128;
	bh=RP6T81ScEphByVt7l00TMcNIeGucVTraH8JWLA7vBYU=;
	h=To:Subject:From:Date:From;
	b=kqqqcci3wBKXtNcZYwt+fKoeNHnfQK8blHBqjs9izLuT5YFAdVouyHhRPW6YSP6sY
	 zH8XmvIC3gBRFg4W6iQOsyEMAeYzGw9NJzVCvuLAoGW6NR++70DV7DFDkD0acFD29d
	 oipgB0CWAsgJKYYUWtnFZKns9Kqbufg6mzYqJHc5Hh+lSmEvLxg/uvwv5QCSt1/U+g
	 MPhYhhdg/cfjl5OXAavLc2xu57ylLxH+N3D24xuEK8OKIuyI+ErLYQxYi0u+Iq8mHt
	 6VBJbJSIXBwJtQrq4qnQc5C8UaBmq1OCD5cdPqij6OTFb317AoAsBGGKrYSs8L85D6
	 UAUrPQ1aTmVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7624C0015E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 20:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169040412867.15589.6992759688355526390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7661e099df4a2a192262adf95d131d15e312f80e1e4f08279405c31e5f7f2dd
Date: Wed, 26 Jul 2023 20:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690404128
