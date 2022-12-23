Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BEA15A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE6CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671757887;
	bh=AhY0/j2ObH58/PzmrtfENuzs7HFxgtzVMNU/lIWKH9U=;
	h=To:Subject:From:Date:From;
	b=KLQfqL/RKjqzROmavNjbi+WifYfKPIfdoTWCsQfFjJoel1ofrx57cekxIog4nvQKh
	 AoN2LeRjH98ZoO9YWLdTNeE9gtRfT9Bg2ZquKHkgto/LJDAEHvjTn3qu0W9A82K3Lg
	 Sr+ux2KESiobvxBpr0NwBrQWD4ydQ1HjUY6vpRCsXbCzarP53pfmG0ZLYy7mhn8qqm
	 46mb5tZGfH1n/EwKxcLXyOGxUJWXP0CLKDJyJBgKdzL+mLztATdprOZvpU1dcI8DDh
	 gQqj7QR6I2vGqhBd6lAuFR8V0aMutuhOWLZBqxcbnp/666cHJunj8EjrGrMVhk3MV8
	 SgtTXEok1YOZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63253C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175788739.22103.12992957074839374500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e1d7fd88d0a0f9fbccb7d50d7a5fbd1114866e881e49cba86d8b5318cfda3b
Date: Fri, 23 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671757887
