Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA0A2F3C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C51CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672578087;
	bh=U/YLC64KAmZN5KgB7p+8pENFWUF85Kgou36cgNxLo5c=;
	h=To:Subject:From:Date:From;
	b=pdyv+xdB1g2dqKGyRz1hJLpgb8Kv3FGPuQxlHa/VxR3W/X3VPrs30cyR85+jeTyzz
	 M5FaWSaXcJnMy6X2v72c8kDodhsWhxRAhZf3Arca8emnqokKyXOxDcLKieCO5WXroK
	 DtOjJT+QFs4MJ0gEgW6c3OI1T9cU+ZZOR+6Q89CVx3VnEw8V/XZud+GyX+x18VNLcc
	 Z4wOREgNJiKExlTi0TTbqrZqp5i1dR1NdwTyYMGbIqxrT/CtIW7Fzbk5BO0wzUQfy2
	 nhMWFPVcVAzPJXeCAMhvvQMddD7tbvQY+EbMw0N/UKxQlr52tPFTi0utGpvWPbWQSO
	 6RuUhrDputqHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F24BC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167257808738.1278.1615402627684478259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c6c062a7a94aa92a4be68a7cd48b3cb3469567e34b8883accb773025096118
Date: Sun, 01 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672578087
