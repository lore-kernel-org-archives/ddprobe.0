Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A96A93A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:40:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2061C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687023608;
	bh=qpWLB76i7jZ1R6237ijSnrIE1clOoO2EcoiF5Y4+eIA=;
	h=To:Subject:From:Date:From;
	b=R432qnuhbVTqm76lzKvCklGe2E8CAHF6Cgn893BUkBIKbma7zLNcjJcAYIS/WLKfU
	 SI85P9ACAjP1lrwn3RJy29cLbr0x0MgY/VIBcsA0J4S7V683nPOLr5jPKHwbKR0aUf
	 l/Ka6AEzvsskMKA2pFUjmKdC/Khr9CAjTW1ZXkzAMLJBlBVArO9wnQ5NpglDe0g1OD
	 SRlUxUgoTdeE2qO0vSESuBgHG9YvBeSmbLN0z/vjHCL/kKeXmr1AwVbiVTOx0gtoY5
	 J6tmv5HXXWRqdoMEEFtXCljh7I+WLVvEtzcIx8tGSoAphbQL4EPNqHLJOKXTVeiTsE
	 wYm1nCcizMjFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D66EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702360868.27369.1593274439076428017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650a766b9a27575f7dd92a5c7ffd2496b8d0055f41169d3885101d987cf0bf4e
Date: Sat, 17 Jun 2023 17:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687023608
