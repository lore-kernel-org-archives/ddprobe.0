Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F276620B21
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arwynmuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73902C433CB
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702281496;
	bh=8RrzlDAG2h8FOqJlATdVRqzC8uWrDX8woTKbpG0+Ebw=;
	h=To:Subject:From:Date:From;
	b=arwynmuFKPeFwiNi7wat1r/IrPtoiv4BCoJZi0jbWjbCtz/jBS3Ue+TVSP9HjF3CS
	 meTtiQLm0UYVRYF9CvaQsbKcg+jmSRBBGjq1KbCGJ2EgqyA72A8IpE9P3QW+MD2qcL
	 hDk9sRqMAE72AXjqPyvDo22Whyq7hMtETHNdxLX9ntaVAntMXpkxxx/yYMipwqePZ7
	 l+UZa7hmmOCR8rkuYq/RkHEYicBRARZ/AeKla/CHAZ7wS+AVAnQVgCDRr8WS9t84s+
	 v/Ejm63sgKGBnG4rikrrAEAFXUU0CDUul9bURrEl5+4Xp+Bw20RCbXRR0UMr+7zJnq
	 ttK0o9mbAk49w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB23C4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170228149637.11766.17136255686171034073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef330e805040247917cb56d1e6cac6d3acaf6e89aada899c773efa80b8b7faf
Date: Mon, 11 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702281496
