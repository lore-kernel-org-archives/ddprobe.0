Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5641186B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD57C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669967454;
	bh=ellGPHc3ePwFbB+51iqt6Ll0rO6zPCpAQh1UDpXebtA=;
	h=To:Subject:From:Date:From;
	b=jvR3244N+nPWW/XutbyiRK3FFOdpyfr3Gm/2ky9qxWdHUHJ2hCbpaN/tTYVmubudQ
	 c9jdgIxws/lwkzSgRuGe2RA/eYJX8xm+ZNJKLE2byckmxXdPPCbBvGtXRkOlM1NYRx
	 sUoaSluiyl7qg7uIwXPESIZHykvikERcxSW9SsUx0zdyac4caY8SYBsBlmeMzVZtPV
	 e3FiNVjQ+xjZ2Vhx/ovbRjZCgk8ZE3OkKXze10KvvOz7sYBHlFfXNroehvgHNHHG/4
	 WGzmAcK9ygpHkvd/5+KJLd+84ou+5QtEs80wvxvx9+EWULWLTPvrcakghLwtNCZDMm
	 qzRpDvQ53UIlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51271C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996745432.22745.11419657218280610001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0a16ecd6e65a5966efd20ec3c2ef911c6cce031e1c70471c1c2770ef637544
Date: Fri, 02 Dec 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669967454
