Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6985F23CD
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC039C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691318588;
	bh=Dw9qoHwFCQ2wuhj5T2O9lcc42nhunpRkMZSm2oAJ3Hk=;
	h=To:Subject:From:Date:From;
	b=aWwuTwst1rbfFnFLyLdFT2UTa2hrF+FX+wtaZpZ4uE2fpGZhQpu0BvhgP3W37QqWj
	 AdmR+KGlMfimM8hN7lW9t1FjBaKlkkE9R4nCsABf642mYRb0+ql+Xq49ldupz2JVbt
	 KLG2+BTdgyonpwIV9M1wRSdt2XxMlRBE9yPqbo8q0oAhAOFPEk4kf8p7UviUla1z1m
	 WmF4LA3YGpM4ZokQZ5FE9YvuRAP1CDqJxEK8HRuAJrnlHpXoUHEZFbMINQ3UPD0nH6
	 MlHgTJKGGp5hoGfgqfm6z1mWDZEumBKdJ64dMXywgdNoETP5S9lo3CBC2q4oEtUOuT
	 C4P1mHrsf7U5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE05DC001DE
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169131858867.32496.1273802217770224158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24097c8c9f93c9aabdde4fee369379f31072fb8afbc3d480b76a64954b731d3
Date: Sun, 06 Aug 2023 10:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691318588
