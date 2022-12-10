Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C454910F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B731C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670664687;
	bh=3NnLvNW5QEq3J0eLSAUEFY1r7by5NLHvDYfiXh7GAIM=;
	h=To:Subject:From:Date:From;
	b=Nl5h+8M64M6ig/7Ua0KQ9/aPu8Sn7HDXBhC3IRzBrwprVT7AHHPbx+fsF2iRDfH/G
	 5spWwtvNCm9oTQXcUDQSWj2t5tlO/M5KLN3rZhVkDwD1DUgWTtes3cRomM5GVngPs0
	 TwQBB+uAzJDvwdlRk97RhJ0ezVtTSyonEABkS10UQmd+VPNibG6Q3A0slkmuonpMG4
	 g1CS8gy3+0uF0vxtdy700kLiUdejyOr/1fB8dlHrmGRNXljJKS6AUlbkYKAYfzL7Zq
	 1EnrZ+v435r+D+H3f2CjtAc8mzdmxwzHUJtJe0+5tPGBesoZjo21/MA0EALQ/sRoxG
	 Q09TOYDeC0MYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C07C4167B
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066468739.9696.3667867448479935408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748260f6a18151d1e4190061abec6580b9748e6fca90bee5c3b9ec8f5180400a
Date: Sat, 10 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670664687
