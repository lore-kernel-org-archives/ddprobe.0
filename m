Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F57515A8
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 08:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB429C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 08:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681893245;
	bh=KnTLrYCPPqsW017YzAwxTnfMedJ0ot5pCdW3xTWLxJw=;
	h=To:Subject:From:Date:From;
	b=OkaqiBFIHMii3hDN+EMtNnwoU4GfrQnkYup8AFX/3zkCtFhQKSlPxXdvWnjV2NlXZ
	 /B/DgmRXkFF9mPoupqzK5oRyvkVqtU2piaJxwQD/2jXsfYaofTfyu+cRFiP4CC1IMe
	 enQT0ftCbmus3x2VBJbeXnDcqbfkfmS5/v2/3X7Gx6/g+8GHxih4IaiEKb68v/EVfc
	 XaEyI4SItvStkZRXMGb2eZ/PNVBuYenDrNkpJM9eYwrJuRKjLMsf+9LLVi9f0OB3MY
	 VxKZTnDWRHV1Tz6bMh1GB2MIp5/uQXsELRH6oKtAZShttdiZ1NuSI4TCNKZTcOO+z1
	 YrfvwbN3n8e2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAF8C77B78
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 08:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168189324576.30638.13717334673934005095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6e8a79dcc4f18781e8e303b23967baa7bb6c398fdf933b2c6e1137e9cd2555
Date: Wed, 19 Apr 2023 08:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681893245
