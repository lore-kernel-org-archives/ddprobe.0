Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA33A4A
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 19:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7D5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 19:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676747765;
	bh=+CAmCxpzlfbX5CX6yu6vIH+CaMQ9NohUSGGwBLNqYNQ=;
	h=To:Subject:From:Date:From;
	b=gtqWWTpq1FWM6msxwxlqMDB2sE59HCohy8TuH2EwvAMz7CzsIcbmNWvYfYM1rDdxm
	 PKq+aKr3G+SYcd8DTq6to4z0gQyHtzALS3mSmx4Cz66C+l8UCUWIJ+ebEGY0pKa0dH
	 QBtefvmp26ap/m7w1beZblASj8DWlQZu49WiK6MPxFEw9ELIFRQ1Ez7jE10WTR+N0p
	 Qnq3F/0rJk5MMIvozK7lJTMv7zmQGWx5+qqz1Eaz9+2B98Wi2gZ3VA4uLipzQDUFH9
	 oze8sLKlqRWoiZzjpuhUP+1BKybSQaQMdrF7pi/AqdJL3QPjT2y+f36Y1PDfagdA2h
	 dc1yichi6XSsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA85C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 19:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167674776577.9718.2144802909994236027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc65a9ff6c50faf72b4eebc2126d2f47927b5266344d9694a9aa4342cc70c04
Date: Sat, 18 Feb 2023 19:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676747765
