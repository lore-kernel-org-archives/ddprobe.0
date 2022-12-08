Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC5E8F68
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 883C8C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670527287;
	bh=2V881jt7z2mzns1VOQRc/9Po0cFPitAhw/i+JbeZDKg=;
	h=To:Subject:From:Date:From;
	b=YX0PUrbizJnvTNVEi2L4wOgkUk3ofrQhrqNrw0FIflqsgZRNafZLnfP5xch06sTOu
	 YEJttEYcWqZHrlxV5VMg2lgDD/eSwdSlKgqN1jDjlab+4ykBpumHBr8SLAFuPE+xf+
	 +qCJz1PUH+iAfTAfSNe0hOVoLrV7ASFCQClHjHHUtPW6Aw5TCVZkELC766GuLelsrP
	 wLun2qIkSsfSED8tgk6gGyS2Ly5kpKUv8U3znj0Wqg9/e4UmzTEBiokmZwUMVYfm0L
	 hfcq3SjZGjJQzlK2bh7sVJVuYVsJWR04Gv4UIh4/BPbabZ+eX3L+4fkyl16Weoz/xi
	 gc0rDyNg7ySYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6979FC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052728742.7877.11571585043617267665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca3e856be5bf99579de79aeb92214c55a64b97dbf43b080380689d308437d7d
Date: Thu, 08 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670527287
