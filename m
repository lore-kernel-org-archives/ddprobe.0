Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41C463C1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 921D8C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673706087;
	bh=wIGYJ/YAOLTzy+bcDKZ701Ha69Y1Sn5Xs7vHMT7ot2Q=;
	h=To:Subject:From:Date:From;
	b=GwF2uPlLfgNlR+caHLh1LwislMBOGwwfWucY9M8lsfo1jH7GhinD+GSFNBDYdfFQf
	 oQn2wYxusW60gFMHFIK+90P8BeYjs9H58s+YNBHA/XUY1DQnDarKqJ9xJdy1tcd8TY
	 l4UjMbzs+0Ihza8sqTnuLdIsMxfsxL6ucN8NIflq1vg9Jg4tReJ1KopzVFKM8HxVgq
	 4y922Q/WHTVpnxjZgx0qfVBIwo5AE37n7ubZfGQ/X9RDCbb2wYS8iYxfp1HcWDZorb
	 qYpCaCfYFDZ9rNJQ1H7VRRTh0vUmAYYKgDsl2Bgu/LC1vdJWpWs15Er6R57RjZGjsX
	 CxC9Vojx2kbhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68286C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167370608737.23853.17274686812812825721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5e534b1ed561aac0199a01b9ac0aee5bdc1d46b8e06957074f38cadacaef3c
Date: Sat, 14 Jan 2023 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673706087
