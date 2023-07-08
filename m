Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979B9185C
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDDA5C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688842029;
	bh=KrmSD7m/aI3pchaEBPXzOKDjFnpufJDRHuX6BqD0tts=;
	h=To:Subject:From:Date:From;
	b=pF7yk0w13om951eM/IyKj9kDGvShNbGXc1tknwW9XTj+et0Bxl7ugd/8oo8/G6Mf7
	 sZGSu6EMVU+DMzEVBLnHD+wdz+/cXtuUgl2laGS8w/h23nrMJPMBOpzCKrNRyhueZB
	 vEipD9RjudQoV4OnhFywEzEDD5xRQ2No35SG0nKEQvUNZGdXawTyFsC04otqORYz/1
	 6a0UhsMJb8u7OdkScwLNt48U4awfdHTd5TvyCVBQAqfxoUHxGJkavJexzictrREY4n
	 0KD8zhg/tFUBaF/eJwtsVK+dTS7+T5b4NGy1PhwVe0tKLK+gWy70Q9QPRtN4h4CcHe
	 eVN6ZziwjGqUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC18EEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884202880.30085.6939194403955709199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7c12482cdd821b46df946be6c206542a00e397c963f5dcc3cf60d4ff4d368d
Date: Sat, 08 Jul 2023 18:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688842028
