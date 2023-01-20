Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAEB7474
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60B6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674250925;
	bh=CR75kc+wpHcWRTZoHVWzTMXl7u8WUhb7vJX8vsOezVw=;
	h=To:Subject:From:Date:From;
	b=GZj+Qkt4uh4cKVFoAqh1Co4ol6VLGIlGwIxjRUys4x2Ko1Ci1UIUaSEMPDodrYb29
	 4y1cTf8zzMQZ4tuGNhTKYN/8uRUhftHibZt0rphL8klFoVhrqNQYJ6Q4tahcAHb/GQ
	 ISo+ng1G05esVFSTKczRwwL1COAq+FvaiG39ChAa0OWZnu/sueYI371C4C4K9PXae9
	 lOxvJPxM/cFycOxz7WdVOMKbdDvRltg/bJOobQWXITl4V+poGEBZ8XDHdi7wZL2XLH
	 kOYH+1KxjcliEvbCJWhlXcN+VGvJbV/xaatrljZfMsZGpNajeWs3Vpnt5Qd9LPrNYp
	 5J0GCoqOuvjvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA75FC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 21:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425092581.28387.9024319686488456172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19c35a84d7cc40240de25018497c4eb8afc250c239eb9d68b8af0c2eeec2ad5
Date: Fri, 20 Jan 2023 21:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674250925
