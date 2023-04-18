Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BFF185A
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2270C4339E
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681804145;
	bh=baGep+YRHOSELo06IAmgJ1durVw82tL+TWNRY8iljXk=;
	h=To:Subject:From:Date:From;
	b=GDYXExYnRkufgBin8YgLR4OzcuHkyOlYo8sb7mhD3EG3SoiuwjQB8CcIut0M1AZmY
	 jYVCa3WKevkSEGc19agQ1SI5EJFzMM7kvBnA4QEnXq1ieRkLflTv7KL+W/yxhSXSg/
	 DIpl05ClcijVUOQ+RpWw7wO5a+SrsJ01+yN+ibCkFtA6ovrkSEuYL7T+rPDHkdrXwt
	 RAVifOlBTEZn/ejoRGnr30nP0441bg6lXhXgLTu8sYCqQ8XcyC7zmO2FxkR2XzlmSA
	 N2QBAS9s9WcefSEtVyG2NnY4oBa8zCgjYND7TnWr9CU4lDyjeyiwAp/ci1JWuQbIzl
	 jUGtugQgWdxwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B877DC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168180414575.8120.4101367430161321467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ae90dd6eef9ec0a084cd5273ff454b6df2830d17aa6776ce65fd95d52cc51a
Date: Tue, 18 Apr 2023 07:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681804145
