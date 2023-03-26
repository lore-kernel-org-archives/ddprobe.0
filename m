Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6372F3C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 16:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D6EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679849525;
	bh=AhZ6y3YBBwCfKfYS/XWcWQ9q46IB+j4LBNKXAz79Dvc=;
	h=To:Subject:From:Date:From;
	b=GiaVRCp05TuXZR6E6g5/SCQiP2R28O+5t6Y4eezzHeoVjOUPWgYpTc1hPp8k6oPrx
	 2uZ4Xa4X+M+ZYpG0aZ7NtyAm3HbHtOeuLXPC7+9izaU0AUSmodoz+QdWSuah1yRUgM
	 AVuEi5i+/FEPTqFCFf9L5G5FHHz0IhSGzajCTxPZLXxxJARnw/8h/uym3+tu3IVmne
	 +xF1/lHklFC3PCxLSBMgvCfZRKdV5PaIgkSWulSlqZ1lchCNcn7BmBjCr0g+MmWHIy
	 9JudVQvV9SfevOQFa6SdJTEeMF3UWF/e9RQPhK3QVq9EJxA1k9McbPGkP9aUOtpCUx
	 84pgs+eWGyHTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C84C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 16:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167984952573.27112.8607137914975157594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a6d74c1730667765f29bfaebbd3149c1b6953ac470dc3f0a65ae11a9009e0f
Date: Sun, 26 Mar 2023 16:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679849525
