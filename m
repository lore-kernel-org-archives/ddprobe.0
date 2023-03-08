Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2580F7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66BCC433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678264865;
	bh=1UiYN8WVr0FtHxf6mRBnXmo3II8LBFLcPBgWDd7PV60=;
	h=To:Subject:From:Date:From;
	b=uIR4zRU147e1UUYINigk7chFV7Kbo7Sveuyzttobm8mAkA9LQF7Y0avvmemokxVim
	 wxZ6sceSpb+9Fp61PTP4ZR/00HtXZu6KaLH/EVP/BdV+EuPTDSyyBPD8UBQt9y68dK
	 qdarO0isCjGazH6SBCE3dMeNxKPfrYBgt8aaVZv843tQZ95mKiMmgo7VDn/HZdIYKG
	 RsgzqgV3q/VW+47HT/ct5SNys7zBlevpW6hlGGAsBeJlUxxUw4K4oNqcHGEG2gzASz
	 dM7pn54LdNYi+3wLDc2bLXrK+cNqYAbwVR2aKe7Iymcp755EJFn2Etw7RWMHhzk/oU
	 rZQ11K0BeNE4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA41EC64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 08:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167826486575.11478.13582483866397294350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b424be26ba69d14a691c9ed7af0d9caf6c90f4212334141fc7d9722e453989fb
Date: Wed, 08 Mar 2023 08:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678264865
