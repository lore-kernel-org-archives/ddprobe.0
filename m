Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254D517F9
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 05:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF7DC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 05:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675659965;
	bh=484NRqvkaH5Nd9f742/ZvHb3t21mlk7Y7fNLLtqdvAk=;
	h=To:Subject:From:Date:From;
	b=lHwL71q4nupi/WT2LWcqZjzRN6ao1rmYRNwNTVVRbHkgE6arHpMpjH9huNkdBVTmP
	 6Qzcx7HcV76kk7UGxZ8zY30Eq70Uo/Ljh+iEHVRC+Tu9m02pjBkBcgOvJmN3m4H0QN
	 /S1M7cWLlCoVOqFlTeSYShUtMFIBBwhQ7R1L9qpfi3vOcUMmv75EEo5W9CHHJBerpE
	 BxfTTMqP5dOg6zqoOckQd+tyXjLN6/b/LiEekUyHzkItQwtV7A1VBV+gTz2kOXg7NE
	 JKke5nPrfnuVkpplNdgTnu/O6W4uLVfWV1SfuNGkYX23H489K/Pi06hb5AWALvKIdU
	 1sZSl9zh1vueg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34B4C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 05:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167565996572.14889.14187358446360158851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0e9f9bcd2798ec0fe89c19c8c43ec8916a7fe713624cca382fd30bd169cc40
Date: Mon, 06 Feb 2023 05:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675659965
