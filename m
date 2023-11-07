Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2544431A6D
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pO4pN7vH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D836C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699382896;
	bh=m7YNsMupQeEr0c84bKDpEIXRXdB8nIsRN7Bh8qGocZk=;
	h=To:Subject:From:Date:From;
	b=pO4pN7vHxxzohdoKvZkf/weS0hhjnQSwqqKVN5aXAHLnuunbaiBK5DXCP8XvXdSAo
	 5yI3yfTgM8z1rRFvgeYYsaPxnBxRcRFWgu4l/SfQvCJPCugxWDe43b8jZshCAYbkSU
	 JxJd8kJz2ZulH+OlkmEfPn6OrGTygtCvosokrrCOF3JdG81tQk7i71Jf0DCNh3WnHI
	 9OVKn1va1CyBYGpuKzOPZXtl7rkfCBtsHbJaIPfqj4aVHOuOSwMKNZFqEd7WGU8Amn
	 JugKH5duVrYLCdfAVeNXzNdwY/UzDAGH4U0mESVmDuTsh98jiLdMF7w8hfFC81aJbl
	 gl9Zf83hqkKMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 734DAC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169938289646.16690.16891846317650715055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3372f78b5846093d1b864daebe74982218b84ead0ea053d4376647352540685
Date: Tue, 07 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699382896
