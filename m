Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54D317E1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD29C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665470453;
	bh=NtoouW8Zw+eeMMJ/awB4S5yLt8ASbElvWRt2nDqQUQE=;
	h=To:Subject:From:Date:From;
	b=OEM2TgqRS2I1hcvTDrKGceC2Hf1RJIqC1BOLjNGVIDdX2Z9B2DlBCiGtY+7eed6Z4
	 rmPLJk9t68X6pYBKcTavF6JZVgkSCJoOX+H7Wpa4BI9Ef8sb8lAJemWaqlVsNrBiaQ
	 njbuPRXKtjh/laRHlTj0DqyZh1p4xdqv6eakda2uPQpblJe3YtbtGyQO9Bw9rLfTRz
	 jtl0e1vQxEJvew10u4CObCpFfqLVd6JLcHh4d9qzYvq2hdPtu9jGkbVkueZJ7b8z65
	 FujtQow1e8A3m4rSJkqcEHaxeUvhhIGs9Zi3DTBy4X0WJDJEBstH+c0mB8g9OzcIBX
	 J178+k0BEV7bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500ADC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547045332.11986.8049376739041942069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa02439cd617d18b29c2fa9cde4779417430fc47683dbd8b23a27cbd0634b84
Date: Tue, 11 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665470453
