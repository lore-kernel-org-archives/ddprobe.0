Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557FE1FA8
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82A4C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696052168;
	bh=UgG1sgoXRhqfRb9tJ29KI9eToPet8sWtBVTrD3XjxOY=;
	h=To:Subject:From:Date:From;
	b=f1CSxCUBVCZ4e2Zq3Bscf6CYAcP5M1BpDljbW5iFtlKB0MxLfHzBPXjvbiRKR49Cv
	 6x6a2LtASF2ncz/vC0VvPrsRD+z7gTXMYA1VjQbEXWrrgYqftEyPDgqSRmoj3kJY3J
	 r24bSYWZPB7LAdxCyjTe+f3RMP/K0gU52/+xYmL32wrpSMoOqbreoKwx2tgd7J1Jqk
	 CN/+HHrX/ABnG9hNHA+Czp2aNcX8GDRMlZT49vk4wT4k11+yfI+cIAAlNIqg47Oi5q
	 E8vgSH6W0cWE3pX69x6iGM9Ro/fq97asyXLksj7ATWMS33rvA2PDE1zcvdBxlyhYED
	 QCWf2J0Gu1NGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B12E77354
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169605216868.31254.10114585803159595598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebd3ade53c560785575a709f3bd93feea989ea6525686f165ce526e65fd8e71
Date: Sat, 30 Sep 2023 05:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696052168
