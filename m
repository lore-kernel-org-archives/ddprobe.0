Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98AB6AA5
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D519C433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663111253;
	bh=NOl+2rlbLgdXcep/57rdSa3L+ZkzXaZT5ZiX2PMuTUk=;
	h=To:Subject:From:Date:From;
	b=cLgyDlVxG8wgKIyZvu9vT30KvjroVkSwYrm7dOLvUQVvEmGaXpqcg05mNei1iV6WP
	 FzWMv+W8DGgt2ovoZUwdwzZIt0z9npm8sTN7bkzmfKWV46BVPbRJD3NEBdt1DpTYLl
	 zMSiMFZ1iGzgd/XzBsoWi9p2YZ/hFTVwV7Zr2psM4ChC0/uV0Nk0oBavltTVeJmrQU
	 nikEWd/+9hf6sOgnNIZywIxti8wFjQgfElOkqEj4Jznz75jymfQ8aqQnkoLcaeyv3V
	 iQCB4LyAvy1EQn4hXBHzblmsya3oKSupleKT8bHi2+cMepqUqGg+ARI+S19M2kkVPa
	 a8fsDpJjdx+Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA7DECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311125331.28493.10374565756514069098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1b462d6876eeabc4fe02f0fb8fc9a9bd06dd444346be3d83aa43656e7f4a09
Date: Tue, 13 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663111253
