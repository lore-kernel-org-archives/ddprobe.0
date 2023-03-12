Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22878EC3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 23:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD014C4339B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 23:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678664225;
	bh=56kNv9/NR9xYWbxvj7oJQLezIHVLd7TC4jrrlJMrOh8=;
	h=To:Subject:From:Date:From;
	b=op64zhHEA8pNsXkRgV0m/+uoLEORX7iWVZtrJ1+r0sEhzNr+Qz5syLScGW6iEmGwS
	 jzpj4ckCOfwaRRusYdkvcNiWSoUzdq5L+qqzkCGqFds+3U6q1j76C6ba7M4XqhbaZ5
	 zQCNIYcaHATeqUzFoYKZe+WTj1s8YDYQ+awXe0zoWc0krw1ir2h+ldJWgZvNY7p4tb
	 00uTfAGhuKvA5Q6Z4TsXV9TIC70a8gtEqUBTR44YkLkr350XXADJo1S/GZw+lbtbFh
	 wqgJnmhvds1ziWxfMLfhFe09f3q4vGwDZR87SnYVntM/LoZxI6S27v/RMQ6H/EKWrh
	 HNTK5rWRx0JEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3737C6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 23:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167866422572.3972.13291200880876775766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b7e1e4d52413ccf9c940c3ce6d22b4ecc2bdb7c4b56abb571f9606adb8effe
Date: Sun, 12 Mar 2023 23:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678664225
