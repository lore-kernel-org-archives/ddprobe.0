Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BD2168CE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D10C433C9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689095228;
	bh=64HSakgtEhxNgWlzgXq8+xAGAWqE+vNP9AqRgcUHT8Y=;
	h=To:Subject:From:Date:From;
	b=mAMTnBejaQPllYKczCKx8x/vT9TsbxYutNlYXTz/D8LWai9YgAxLwOtIfKvz2wDe3
	 2Mdi3ADIfyyj4+ol/E2noAeTBvlOVTdERtFyCcL42kHbrbriqt2ICHvj5mQsxhZlJc
	 DSyMtMjjw/mz7I+CaZu7Ykdxe9GyRdZ0loQ5NsIE8eTHCmoS0moER7w4swVWSt+Ifo
	 6narMN4Bw1WO9QxjgNn/EQkZM9k29phpB0o4jnt7zsvOKTHN5SQM7ADdYSt8iI/ju0
	 r5ytGpFaytpaCcXDQSqApEVx4smg1Ns+d7WQxoYzdrXJC5pU58eNAxQ2XcQphFh4sd
	 q39M/KEStTr1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A3EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909522868.9737.1865851053639555286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f255238f699050387f186c525eb8fbee195e24d352f72513bb4db1670d0ac7
Date: Tue, 11 Jul 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689095228
