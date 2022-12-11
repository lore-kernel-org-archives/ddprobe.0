Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02283236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7839EC43398
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670794287;
	bh=k8iQmwS4nCX6lRw+fMDRkxn7+HSKqj8KmwrBqtJCn5M=;
	h=To:Subject:From:Date:From;
	b=YS+bmIej1dz+a7jEPLYutXdi4Fp9/XIA39+4YrF9zau5UdeoVsWwsN27auZp+I9RD
	 yGhjTxWtlf9ZASpmXN4rxqjVRG8S5jxnxFyINHBIVnui0e9/dwPv2sNRi8eGbHqFrZ
	 eXaZ/HQGPKTLg1hcMpUeoTl8eGZHZ4ccuUaT8v/NbD6w83BqG1VU6s+fnNoRhDT+rB
	 7nx5USlExAs0KS5+35FcYUYmvxs/MsNQwfM+BrgXWrWp7FsCbQ+Xh7cnVIHtaZl7ny
	 EV5DDFFb5IyYsaQXPnJnAQB/7f2BUrdQnEFfpweCSj5Bj5Nequ6XKd9CcxAQ/ofueM
	 EGc1TdJHyttYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D460C001B2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079428737.12321.15968359910059375754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f44bf0fce31c174fa88c3ac9c8f0c4ca8e900b246191d55ba7e2116b3007f6
Date: Sun, 11 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670794287
