Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004BC28EA
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F170C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672684287;
	bh=UDhuIwXhpFB/KCPeXWHAl3mnPW1DwmgKt6pNVcFfH08=;
	h=To:Subject:From:Date:From;
	b=TUB5dcAlz2hVWjPzs+xnXhBWko1oTOEBpIv3U9+IdN/Q0H6K+jK4HJArEm7acb/gM
	 FNfIIWYXb7sjAJMVaQTeXWXkfQQ/lL+2lgi3BuZ7kuUou4eQGAAyUk9zi6XjC8XnBf
	 mHSXrCXwrmPIdw3+bi9Um8piV8Y16g9HseMlnxvM0drXmU2kl1LI0khe8gkGK5BK3P
	 w9KLfQOSqQz75xQps4H7e9PEdkheSrA5JQxc+N2hSkeytlkx+2wd22IRqwvVsIPjDl
	 IOMVYRgXPuILu4iPhA4Uj0PuLNAzTFj1KZrrsWXiU6qtTeRR9pQy52umfh0rNRhZ+h
	 yovDxXjNZMr4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D952C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268428742.8258.4897072149234175461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91cf5f826deb1a70cb4888990e246095fea1b3c9ab6801aa9fa33b6aaa1ad3f5
Date: Mon, 02 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672684287
