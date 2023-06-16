Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585211ACDB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 19:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC72C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 19:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686943748;
	bh=qMGFTmFbYYqXjvfqIxdpQbmWYuVl2YXCwRgITmebZTs=;
	h=To:Subject:From:Date:From;
	b=rs52I4VkLfXu+C6hXV0ERrpOWkHvYeVrU7Vm3We83x79GctRuMnCKZHMFI/Y+DjBD
	 GtPCwWVczdvdCUH3ibzQP9p/hOtJTu0q5Mtr3QcPpTKtw0q5Swisq+NlzEdyX/w0zv
	 PBAwwWIL6y/K7K3NHLB0RXx4/5zwLebiQml2S5Xy76a2GmYanMqBWXepbdFR/OO336
	 pelbOkwGDjjx3rSqBSgFuKKKkku2/FhduOPt+JhjNDCPabUzlrwF1zo8eTv5FljIHn
	 INpXasKJ0GyBKCG4AQWeya453vNtCzp5OcAVpHxH5M3XePD7JkRUusnxkWoSd1yEzQ
	 yGNGsTdVnQWzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17F4EB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 19:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168694374871.25598.966831739972243925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d7c6a81c88c014e29bb27ce953c8e0c4f9d4ddd7450b0b9df2760f19f57e08
Date: Fri, 16 Jun 2023 19:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686943748
