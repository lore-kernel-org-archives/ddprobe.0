Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1DD1101
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 03:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE152C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 03:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674702786;
	bh=01XYEGYefyNh2foz5ogiLkEh3ZdUhlfQxylje1KM6hw=;
	h=To:Subject:From:Date:From;
	b=IiI0Mrnl+Pj3Fnd6F/APoUjMNQ4jh0dJ1W5NqOdXoQeCzDhHFv+J8BOAb/C1XumBA
	 Sd43pNARjjw1T06Gb69uFcekL28odKFE4UX6/Ey7547Oepev1tltFwUqQcDHIsD0gR
	 QGkttV+0dkKzYN8KTTEgJgAuUyAwa8ZNyz0MznVTlDcmgAu39A8Fzh3fc/Oq4sm6Ex
	 mL7VF7cMAxPsqVjBKNsKHUzd2QZY1bjertIRTKXeDUrnAGuy0Eok+GqVXQwFJ3z6oo
	 mEppge+RLlY2nOXOSstffxnTEvEzRVGMQs4AG1I0enRnB3dXhmXRY2LXTJROD/X67L
	 6YyFlUYpkq6ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED7AC54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 03:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167470278583.29199.2480921360335051728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693385799057f62e19ac84d1c541e5c2c7747deac19cd23dd686d03bc9d95f26
Date: Thu, 26 Jan 2023 03:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674702785
