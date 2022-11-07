Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B239D15AD
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A9EC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667853054;
	bh=HA6kmECjCNJZp7NxGEDA6fYmEFn6UytfI4YflfBaFbg=;
	h=To:Subject:From:Date:From;
	b=HaOI9l/wfKleE/yxRuY7dvHjZasIcJl9PpX7k1Rpi6Y3WBHsxVCNC0o+JdGyWt3f+
	 wi41x82XDEdpL/Mx4/HEkVybKs/eoiK6cVtoq12CDl0qKkx/lKdMCQXwF7WIj/IRuW
	 NpjVT8FBbR3I/f07tPO4NkjfMtOLNoC+ZJga7Jh3Yxc169+D4OmX/oFGTv3Jgn1rHT
	 ZdiZd0VJxbjvVPGV63QM+Lq9xvywzf3DVdXL0Z0aDBSPkmE8H4/Dav9xBD+yZKorsh
	 8mEJ4ZiFZtufJ72AwNlg8+6T78hX9zudpeieW9uyuNbsnZQPax2NAvwNS38GucnA3q
	 TtoppE9T1LMig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574BDC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785305433.31349.15538119473808530841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b0f33273e27f5ab1efc5f99bc6ca1034b080b8e16fd156ff86c63ef56d2d18
Date: Mon, 07 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667853054
