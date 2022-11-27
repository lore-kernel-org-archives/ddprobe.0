Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E558491
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 780C1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669587654;
	bh=tG4qodOEkJ8fnQERx7nHrfDRN0YBHRnF6VJzJdpEjU8=;
	h=To:Subject:From:Date:From;
	b=NvaJnCMgvPj7FIpiPNGHZ9C6qM5KTUXGDnnfr/rZTYLp0ashnWMrj5nYNK1GGosWG
	 QvXXX0rfjq8zu4hJwsfHaWdDY/CD6W/9YIJe67O+ZrfWfpA4cHlbtvUz4H7wXV8q2e
	 GsFCGMIsPjEE5ZgfQVVEM66Y9TCWOl+Q/XvV3c+7+ajt3sqSdWUK7RaBdFPHn5SpYq
	 ehWjee/IMztbBZHj+Bmt0CQ0i0ratJUCB1Jnm00Vg9W67BmJJLHUw/uHtSrRTgdxMB
	 2ozrBN6yTTt4DRQhDOkt7spnnKVQrQJ85dkW2eJ/QZF6dTuvIoH0hmyFDvCcFeY3YP
	 nnK5soSwbuFrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570CDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958765434.11554.10430263019170820094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0549a43a9b7bbb2389be7965644b18e8e7a565b342a8c296598c248c40a459f
Date: Sun, 27 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669587654
