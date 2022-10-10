Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CDF23A4
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69062C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665386453;
	bh=5kHtTLr/WnflG/3ud4SaAvtkWJ3S8aEA68tPVrxY5/Y=;
	h=To:Subject:From:Date:From;
	b=q0ILP3czhPyfD22HPNja1YxjN4l2lmnDcGqq4+9cfvNz5IRXvd1m0m25+gR4AOhgV
	 ut9fYmv3QDAx7AbKressR8ckpBV5QmzZ2nPfcDd+9clJRrG93ylSInnEFWuIH6J8+s
	 tQRHN0XVmY61QDozTKvju8HJNoVshXkTWCyBhzsf+ZsElE7sxZ1vn63B3ROKgDwphR
	 5pVMB7FwLlXQ8Q4pz/U5SUXHW+HwjKY0ewR5F5hsSFl0MgSsD67O7FL4Dk5gj9Y8iD
	 XuBkwjhUuPaOg6wiLxyq5HzSCYqZ3Y8/u2UoFkk9Iv6enMeQKNQgoK0f0zMz/fS972
	 8KdiomTbIQOnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E14C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538645333.15085.6298213992820831436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c506874e10cd263b62e337d5d7abc6bb3c0294757d7e6ab045d76d402256eb0a
Date: Mon, 10 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665386453
