Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79AC10FC
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A457C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669108854;
	bh=M/FpnFX2zOskTjyBerEIpqgwHdzZsGo9uuxH8nVmd0I=;
	h=To:Subject:From:Date:From;
	b=F734OpmB8wLwLXqBhNaK4CAedfK3MU5LJp862vNQ9KYPxfl27a4q/87IfrVe+2cF7
	 GmOMSCgHgmTML0LCPKjF7XBISiISqFIu2zewVmqeQ7Iah4/VQJyuZmzEj62xOi9TXu
	 VOLbRlbm2beacGdP6n2ZiddKOl7zlcMyoTRInarTGxgxuUN90eeAm/ZLqaYLyYslJ2
	 ME7v+ZyFfefwSz2BvcqL6AdTMQs/PwU9aZPrRp6iEIGJFhoTMeZAdDd4kxtBN6QItw
	 CAxReNKCpVMqJyWoQWCXzGM9Ep+t/V47i+My/f4bRwz6WOmTxGS7DlZaBGBxr10++q
	 zlyWq8+HafpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543D0C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166910885433.29641.946059272284049345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156c9f3c8d0e78a93b58f8a2e00323c7808f5c146765085439d3f25aec77852a
Date: Tue, 22 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669108854
