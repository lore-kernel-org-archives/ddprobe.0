Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A94637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96D77C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672808487;
	bh=/lWOE+UefNhqod6F5cPnDssV9adnpsCwjGXm2JNWZTM=;
	h=To:Subject:From:Date:From;
	b=C84v0GyvY9hO6XWP6+nhjm4LdaMprcxmS8qMMC0uQl2hfUuv+/mpP11LwT8N/Kj7R
	 lAoO9wVoFaBOfUSTHwRZr85DJNlJab1n/ARpxFwVK+iIkbU55rIi16LPQ/ZSuxfMNx
	 CvcG2+N1Isshe58sAD8NCBC15ja+/dwP6iIgdD60BmunFp6NhLeXxcf2W6V1WuocAO
	 P400XXzXsIu4lk2oMQiWf2hrx6dsiFTxncQxaJkeggnUTtlp4SegFYVP+/UWbxxvDl
	 3Plo6MndIS7cXD/ZhD7Qi9NLQ4wk/oTpIIK+Uodm2Il7GvUkId54NZHJpM+XYqJorF
	 cx/JAx5sXAaLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79685C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280848739.30199.9496767498613276907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6eb475da8ddfb70081690ca0289a55e89dc0f287e1bb57eecb5ecba261a9b8
Date: Wed, 04 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672808487
