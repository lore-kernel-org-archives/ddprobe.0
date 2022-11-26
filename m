Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D235D7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77463C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669431654;
	bh=n+dyDIFAZjAh9y+NsWiNIsTsUvesLXhGald62aNHLmw=;
	h=To:Subject:From:Date:From;
	b=KoS5gHzNak0mO36RqNP9o4HkOf5Dh3k3i/xFtzvokeJb0eDttX2ZsQvHOTrzzA1k3
	 K0rVtqNzFVLXoT+OsA7lI6yszxlDO/Zt6jLYkyWCWnQQjYVIpTOkIYptDize4KX9T5
	 wyrUi+BXkymm08A0flb+RLAb9EXy97pSdq2c9cRQDraHusQ5Y35J/l/PQTohISzMm+
	 FHBVyJmEU0BWBPhPzhsU3keTz0daOehhqbTcWNhdBCcyYoshNxJQbIcltJmwQpuvQv
	 qorJuj0FTV6K8WlSkpiC/QRbrxWXTeZCg6ZhQP5v8eYkHfHyAPgH62EGUnLpcD/f7o
	 +qw6Od4aIihqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55334C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943165433.28030.9204221300234523217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c5892246db3827a08575bd3aa927058d18f39fb567f8aa7fc1c1f2eedb27a7
Date: Sat, 26 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669431654
