Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD361FBB
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C35BC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665064253;
	bh=Q6EFufdKhekxDdCB3+KnVkyU27ZhvyNNAFFX18DTaHo=;
	h=To:Subject:From:Date:From;
	b=NmnWsJvH7bGpHdiZEx747f9W276EBtJD5KefdyGstw/7t+mkyeJVl1XsVTm+thqz3
	 XsdWWq7Z35aWX2Z75sHxPTajWKVr94xkU/jiRtJ9oNYU5FtrZDG0Uki6Mz33OiT6Zw
	 bssHe6kTEr7GHp5jg3hVOvbNinu9Nrs63ct6oX3jPat5ZFwU3bGl8qO0K3bLvqSwgw
	 vVEQrI7TcOvDHvxGqqLezTPZc4hPG0odfTbw9Bne34uIJJRzG7km6VkgyX7p7jc2hF
	 GWW1aT74TArYzLcM9xLSA1XLlme0IDNzGqChTxA0z/UuPNKJouVQ26mW+c1FmZhdtQ
	 k/beGCOEk+ORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CB1C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166506425334.14533.1000290476802840549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8314c0996ae593e47dcd2f1cf9befa984ad25e4582ed33bb8e5c861f7b75fb8e
Date: Thu, 06 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665064253
