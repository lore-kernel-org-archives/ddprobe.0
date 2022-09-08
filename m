Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B787C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D824C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662598853;
	bh=ROPvRVyWmCBhfez3ZWLk3Qfnt7EzVzBDur057LkPXIc=;
	h=To:Subject:From:Date:From;
	b=HlpgKFH9DddXTmIxUxSkHqaEc2dFdoOUeybB1osed9gaNnwm2+29ilf1Fkg0o1v7N
	 Fdevp5C6oZJK92oYq2SdUw1sBbzEpfAg/59+kaaaw23RF5FvxbfzYAwlhvjPsC4siy
	 1dIw1IbaMgOc37e5j1qVIBYRMyamg0Lk7ueFe1n3Kyj7XDpV/XOYM641EzEl88LTmm
	 qKy78hUmiLdHo3R4XgXKd2QkSiWx7M8j7afteGiEQ3saMiCkwLT3Aai0OpnweRHaer
	 zn6IVFDhhzyIcwvmZw9VwDIubtzCVwpyAHkMLusKFZj/9l4VQ2uWVLlFXI+EaESwa+
	 WIvWakENtCdpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55534ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259885334.27458.10498598784850793923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376a45d70fe2c35382ef55e8418a8a327f99b1f6b13229b22db5a245aefd7dbc
Date: Thu, 08 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662598853
