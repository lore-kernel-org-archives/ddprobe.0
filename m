Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4171F7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 22:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67F7C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692917048;
	bh=poVO0eRozyGRQXboy2teQkg5ZU+cmRwEuAx2ds6vufk=;
	h=To:Subject:From:Date:From;
	b=tlQ4aHblrpU9pnZMvQBRGMexkSypzdnQTFYfDQkMNVkm3Qg/7Xu15uaN0/0mep1gE
	 Kc+IFN+SlLZY8TMYfPWt0iM/ELV1rakJ6EQ+ZBEGVyhzVN8YAsIQ3mSRC+LK1zBdi+
	 lNC2x1Z/J3sqpzYU9KD7k4EZJiWCnp1MXl1De1BQ5XBos/PhJOyRwAVVftsCXn0L+C
	 RTHBnZD9waNC9nxOidjsUKtSUWNX/9Z7Q5ygm0E4/ZWasPRoq8xKeF1OO2ZuMJe+Jz
	 9DXep7HI3d2pY7c4/0rpOySNE8gnPCHKYXkWmfLSQT2vmOy1WORIVutTGX6i/aToFu
	 JFLkSJzTNZbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88FBC6FA8F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169291704868.18045.15815637882001461607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2bb7acdd4c15bda2b3e80a86f3fec45ef6914ce8afc92b1fd5a95161d521bf
Date: Thu, 24 Aug 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692917048
