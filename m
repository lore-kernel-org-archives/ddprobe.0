Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B986624
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 01:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39A6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674438125;
	bh=pnLRWZ7QU9A2lJI1BNiiXfegGuUjRn6+9VlPcaugEzA=;
	h=To:Subject:From:Date:From;
	b=RGh6z9hMRPsZ9fZ3+COSMud5zxssKwNOsUGmzBW8E0UUGhX2t7R5BILCQFTQB/hNi
	 Iqf7dfW0lcdx9zACIdVH1SoJCRhQVMSS+ARTlW1zFmVvd10jJeqS2RXgN9dp32LeIN
	 cAiiJxWfCZoYbfPRoLXGEStjGwlzSrtFkWVN4i3LEc8TxvGzU+CHxnRjiXBlCkPaUK
	 xyjP7MYfnoqVIVePrNT5N4/B7FPjX8tKRp5+/+JFQ0O+hTNecfjqVEVZuAZO9VJFw9
	 41hQoi53YaG6VlNG5HeQ+dTsEwmR558Ynl5xypsfOmdYCM9BESGM+p3oe+CT5fx/+f
	 d85Dlcn1cvSYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FE0C25B4E
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 01:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167443812574.8039.8362726962059187183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1d1f84040fdf39885530750b01cb0631e9f6a1d43e65956a2b1cc1e601a6e4
Date: Mon, 23 Jan 2023 01:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674438125
