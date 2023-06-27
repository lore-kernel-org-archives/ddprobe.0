Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D21EDA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DB7C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687841588;
	bh=uplcwQMkRaqIbbMpDCCDh6Fyowcw3DelAu5Cyk/id9I=;
	h=To:Subject:From:Date:From;
	b=OTCWLraUJPrckMmlxCBkId05d/c3PQibcKp+wmAyTbilXmbUweE+vxVKvT3tM2XQk
	 QZa9rnh0vdlpFjCFmUUYwyu8VTMtecozajrtNx3uM0RYSOl1VHqnAfAMw6yXnUi68m
	 mkaGyZiQSbJey/2XhcuYLZhNje75rnK1N4LVNHvPvh7tVJ0p0lVhFamqg9BNkWI7LD
	 7X5j3U7YotJStIXcd/lhoK5ofsHiHQAYZmULt5TsxzXgnYwKRtfNkf6liuba7c6UZa
	 PzP69Qr/Vbh5o7Vn1MjPY+uEP6kii3SKedX6E76+koSL6TSu2AI8iSMKiQ3MUMZW4y
	 9MaVwqDoEnIIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC8FEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784158870.16305.15046438288018584965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c8a0b16b3bf59c75305c87946012b7709bcd40a355f300cf3c1f26ff451021
Date: Tue, 27 Jun 2023 04:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687841588
