Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D555CA460
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB54C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670532087;
	bh=LrsnZ9fo6etutI+Kl5M5MGxlUtTqIi3Skk2HoV6UvAs=;
	h=To:Subject:From:Date:From;
	b=ABSmEosWR5QuKECGmxqjYdMfdps0RqevXsT3vY2YxyizP0HHmMl14ondi5NF90FBO
	 SDULyqiKf5Z7/NUF5oFDlSNKdP0kxVvNmOUSeLc00amWQswwKGxWzNCd+tC/RtALxE
	 qTuDqNrsFEZAgvOdbZxiQKooxzk0OSHlYAFHVKstNJJ67nsh/QR81opaVJBj6H4+2s
	 IV9EyuWK8xjOVg0G68pkV0HZ5L63m5M3EoM4pahclpPI7Xh0SutDfJUZNQt/trknLN
	 fU/M5OL9hJb6afue79+GPvOphfhnkAQWAtKGKrLpwfrsdUKstvCVLV2cApk0jZ2JBC
	 GlnVclPnAZOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BE2C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053208740.10498.380009430263973720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e03469c0227cd56587b8e2650671ff8e2ed6f3cf3da45f5c48f6c10718783f2
Date: Thu, 08 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670532087
