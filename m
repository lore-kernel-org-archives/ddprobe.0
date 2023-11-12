Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D91317752
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBUF93iI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D721C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699819096;
	bh=0Y45bSxTD42Z335MTCfYHXSIUF/XYtDIxWus+hhNMGU=;
	h=To:Subject:From:Date:From;
	b=jBUF93iIjlQn4Nob/usj80zhXnYZDJFROU0djE0CIY1MlrQLrVVvAQ27ADIxT6XVF
	 usNa3BUSvdDzdFLe5LslkZioSUxJght9cPkAR5yXE2cyUJVmRAjgKldtL4h2KvDicp
	 iZbeVARvlMurqHN9hwZWqc/DGZ1lqkJdXqOGIooxlyrRdKEXynuVxmNfPS6Xqe3+XR
	 Rugnrw9mP1y6CvVfKngLLZBoZeIZN+FoJJ5xPFCMPBQZFHP1hXHwzrV+3uRtCRA6p4
	 9IF1YD6dXxGTgY3jgtHph5fY+noKlF0JSbt6K2+V0xnPyS0FXJ5H2gEk4dARYafYVl
	 HiVJDSi3uYsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 719F9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169981909645.6487.5148020284496850601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9305a4c3a7b186bbc849795f1e29ee306dd23b01bc3aa18d60b89f4fbf4beb5
Date: Sun, 12 Nov 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699819096
