Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8375A1426E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 19:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A2DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690573928;
	bh=TO8/J+idymLh1+8kIL6wH4glTn9tyt2KjytdIFLWhco=;
	h=To:Subject:From:Date:From;
	b=XMS2VIzGtVXnHnaP7hQsvqMvzMRttPK22n/fTrPqN/kelBDpbkkM2FIixHDsIt5ld
	 c4lyGM+YaTITpRe3dvhl4/OJ0o02VcPyNUcx2b8LD7sZf8tjicfUQq5AfBS/YOjcxe
	 zTGeoNcG9SIs4anpmAyyENatt1GxZ89dSdqEI2fb3uZA5BKlVZKFC4lzTaMU/g/bLp
	 8U7kBzSg9bxgz7Cp7GdS8AjaN8KCeUbX6V8AaW4uW+HKAUjTZxAjMqOPKDiftn6QAh
	 SnxrG8/SxF9QKbnr9R5IWZLGWK1DiGjrVeJwY66o8kWPz0ejY/hJPc8xc5pM8t/DvI
	 pKQzNnbHrWX+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B07C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 19:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169057392872.20890.8600608368031794084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b32d10cd1defa1c5ea2e7e0e94a4ae11c74a30a9c1870dfe8f8a509960a975
Date: Fri, 28 Jul 2023 19:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690573928
