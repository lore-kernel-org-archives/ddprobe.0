Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D4B375
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8462C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695452708;
	bh=5bZQ8U5FkiAwqH21aoA1MSyDRkHhRIMgUIrcsobxKQE=;
	h=To:Subject:From:Date:From;
	b=YTNhA7RWsPvGL6sONhf0GVzAb+05NHvGNEdsvZnM4evdDIdU+oiz7qVDC0DnruTKm
	 9D8hDmDj8w3foxH5vXplhPHIMxcfarnhx12TAdsajSb2QGINcYr5v2IkM7gFjBBwGw
	 ZdT0KRSATvtUMzEAiHGmuuGzO4txOQeDoX6q7ksgWzjb2/TTGZ9PSzDwQiOXdbcL/Z
	 dC3aTD1ZK6jmLjLRyFYvH8KFZpWlpydn15pegdeIqZr4lYSLGgr8eGhR5VwfwD+bcv
	 TpxIAZaGmjxjzuh4BO5ZbY9kp7LOO+HIjqzHYU0W9Vd3r3LJVhyvG98s1QsCmc4DOt
	 Rfd7qR/HzFRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD9ACE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169545270869.22781.9626977223996990804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cc78d512615a5ed9e2b7606bfcd784a76983cef7a0fc06bf30ea0cd6dcae99
Date: Sat, 23 Sep 2023 07:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695452708
