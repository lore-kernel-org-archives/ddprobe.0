Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A992156F9
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 22:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFC9CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 22:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683237906;
	bh=7i0ChCsr1dvcB6gHMeoiUpLNXNZDLL3xxWXGedZZQGw=;
	h=To:Subject:From:Date:From;
	b=mb6o2Ad7RfXNhxL5yAQ5AcsmTtMId0qc/UxXmhGfMpYZAgJmaRwSgjZZ0IfyL1dlV
	 2GaDrDoHjIoJQEerBUf5ZY8IYAYc88wEiowRb9Ct+o8zCvvZ8pCCQkYSsDIAYiaTMI
	 0DEo89s01JSjSOgDXvQ3zYxtC+SVEKjurX214Ukpnuvb2ps6aKk3zDyTsUkFeWHQxX
	 WmDtyzaBS6Y37uATrBT/51rvqSIwRHkTrVy4rpDDINGuxXDB7i8NVLx+dByn2jDryE
	 C3snSHw+1qm5w9tDcKi7a9yjZ5/HslALZqLjHcUoPnKv+STiajwbhyNh0sZaGTrOHU
	 oxiS3N9m1yw8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AD8C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 22:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168323790577.23323.17040011813472545600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a62bfbf8ba48bb6697e28ccae09a235ab36d09214b87edd9197f89f4600bf7
Date: Thu, 04 May 2023 22:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683237905
