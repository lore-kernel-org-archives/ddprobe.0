Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C020C8F5E
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78333C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664044253;
	bh=X6G6W9w+mzPHu3djGRW8Uuzdd+RG3kNQfXFDBVi+ua0=;
	h=To:Subject:From:Date:From;
	b=ppHBJCEFA4VLGP3YuMO6hXiVdx/3RpMOYveg3F0NNtWvt1FPnN9AQJ3LOmUhCZ7Rq
	 b9ZgW3tJyoGALw4kYsU+p6XzCdpKl3LtjrliTA+lz5utygRtFZVMxKfSMAhBhFwsIZ
	 K0VkQA0wsnzSqgMWJhaXL8Jc7HJH9eahYHAu1liVROtWBJaKMAyj80XTqX5KNQzFmZ
	 Ol+RfLrnbrmzve303IkxIoIikJjeZ/85rw0Sr2f5ipHtwEwl8Nubn3t/3rgAsbcA3I
	 rwK23G0pE1N2Qk+0w7QrS3lrnDhbSEkYXp19XnLybaFAI6HjC0BXJcZ6saYDGWWB3i
	 ndhFqHWBND54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A508C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404425334.18109.8325416944836731107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064b819c8bee3f12b049d8ddc1e5865f2eb9030a5ec9eb44bb2c0faa03bbf927
Date: Sat, 24 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664044253
