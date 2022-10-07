Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BA87E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2E2C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665127853;
	bh=r4QufNjKUnkJ/VP5KPORzrRGNhM86aMJQ97hUcMRsXg=;
	h=To:Subject:From:Date:From;
	b=OWDomsEwM7dL9Us10c8CXsVPEGvo7LfQmMd9/WQ4lq4B/2vYMrb1xMYWqF4f8gMog
	 M7ygSBHHJ4KEpOo3OGVO8zR6ZC4Po8f+O60PsznEtGZTcisf+gpf3dyMNB7Qw4/xQZ
	 k0wD3JsFuhGpqyOz+A+s5GoelNTNAk2q7hfc4FuFTNG9JpzIj12p7vEXHvtMlEh0iL
	 U+2jyq3a+x6VW76oLp7OJAxsTO4mWUs0zKy71TtbNxp5vttlp+G5kRY9Ytl2ZTt9P9
	 /ffvVAKk0BJ5tpiCRIjWpHCgS0lHD3/KG4LibK1mGqROp39oLhrX/eJGvXEAwdwLLG
	 W/1LhQkHIz3Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFA3C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512785331.22555.6759136557965788923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047a522829c6ac5634cc66810c08864b59f0aba8571a3123504038fbdc1f4b50
Date: Fri, 07 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665127853
