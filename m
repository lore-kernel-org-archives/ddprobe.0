Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2AB8F6F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84063C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673566887;
	bh=iabOaoDdf59QTvo6mSw8cxVzCUPDqqIxuE3joAyH9zg=;
	h=To:Subject:From:Date:From;
	b=dlXkP8YfWDgFHJMVmtyI033+64oZ1nKK93SZ8Y3gGPisQ4SpJ1G3Cv7L//GS8REAa
	 IZm7/xw/R1/Rte5lAfaYma7RAQp77yXU05g1jSrjKayqcyKpjUCBc0XgX2RlL64GnF
	 tLTrH+cnZ76JY9TqMRowqzdZrQ2kwxz/XPq9LiZgTIZEsOH/KUI7yaIkvV9BN/hI0N
	 wvv0ajBtaBQkbMMkz6bfjx67IZQJNAqR9aTLfGMYUM2f23fiZnaEkvrGEGyuUDBoU9
	 Wgt2QsOHz0IaE55IttfMfZJs6D/aUGidcQI1CQQVHGcJqVxjUa8rHfA0hBqaS0F8wl
	 2QHMtJzaPn50A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61623C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356688738.10135.2051782994957494014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780a8f84d468f0ac118d29849cdb4f438bd60a709279d1dc0bf9639782e9765c
Date: Thu, 12 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673566887
