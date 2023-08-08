Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7703E3D84
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D661FC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691490788;
	bh=pUoAB2lIv6NWK6lwmlPlitrQc7bXlKbjv1/mprpMxmI=;
	h=To:Subject:From:Date:From;
	b=X/J5Fzmb/QlWjUOWPUgE4CSrprFhdnLVJVXG3vXi5r4fm3l2PAHHboqXqp98v008Q
	 e/u3tuM5Tm1EaGFYl9r6lSlh3tVK2YZ4MxYUl9n2UQam4FOKMtIPGzA/VVsGG2NXIV
	 PGNfd0MVjrHnTb59/N7R3xfMtYN6D48nZuU31OBEiRAw/pkGImvueFoCpT8LQPgZCv
	 u+6I/aU3/J7Rue3NGUEycxOsJp62BOJ3IsJy6+4bNWPhPkzvFqNyq8ZaGEqUd4C6co
	 qL6qi+df/z5+6QHpsKQL4FViGj3ZMjyPm0xmT7Z7q3tPG7gD7Sum8L3pkDFrzkBj5B
	 fKKO2rbdQkfyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B948AC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 10:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169149078875.32519.15975135893478028829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d36a84adb0e7eb0e61506792345a55da3f2c8372057ed2361ffa04ea2ac983b
Date: Tue, 08 Aug 2023 10:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691490788
