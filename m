Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CE4A34
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67C43C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666622453;
	bh=/2GbMxqJykdUP/0xFZkciaRBOVC5sxRMbHMSxLQRtss=;
	h=To:Subject:From:Date:From;
	b=Xqvt3UF3B0aKa8xl04EK2l1Et2hoayTkQzsTz2bC7JunyqDZFxhtxpGecCn1rVnqr
	 rf+PPNkuB5YmktQvDRXSQV7NIdg0FTm8yOwy7TVpmiundn6P2NIkW3G9U5p7k8hD/u
	 FTq9A/cCtjx0z1gKH3OjfDY31y4yJScSm0LNXY8etlxjIAu0CeZPplHXHOrCXA0ayP
	 j82rdNsRe5R3ltAadwZsxuci6Dr1QsBcpt+veC/Zmoah4jQdIZih7tAH96Z+lANO0Q
	 24rXbwg7SUucymbLAtn4mAf7kr76vEoW0GH1Ez20pbfXXwzvYMENCk+fRz+pFKnpfG
	 DSL5uk1ZEC/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50972C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662245332.11259.8063134308012134112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd6c9c4bf2266d8790e14be1a0763e8e302f539ae6ba76c12529969216ae5ef
Date: Mon, 24 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666622453
