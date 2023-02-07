Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416D917F7
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC7C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675747565;
	bh=yUq46ZEkQ0cbJH1oOCMyPq3FtmH1euQoq5hXt8vSz00=;
	h=To:Subject:From:Date:From;
	b=uatqL4BMl4QngOkjLCsWTXA4vz72upzoEbAwvbEvrOZBmDvPk3i6a3aBOJkb4VlKC
	 4GMD07FkIDb69HTyycr711CZjwUZcnGkBxka1CsbyjnGl12HkkMkrouOGnmIRpQC0l
	 H6QAkzFJHLTva+qs6KBFZ7bi9UOH3D9Zl2xB6xH3cBPl0pnV49j15sL8kU+t7q2AVe
	 25163+91rnNg4Ki7KlChCRbPRAxj5U3/kj49I4YvK0BiIn4uwMn8gKZOae4Hf7pRfr
	 Ht6YRWEKvoZGr9Oj8eQo75teQ6DmMunJPtGTFgt0Fbls7PSc2ZgDlnz+CH9Oj7VNnQ
	 +tbK1Qe55cB+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBDFC636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167574756575.16831.9828538814560861247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9617b313958a2880b9b072e626f4d0dc00b2ea8335283339401389fcef073e
Date: Tue, 07 Feb 2023 05:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675747565
