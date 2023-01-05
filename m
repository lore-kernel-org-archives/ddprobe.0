Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7BA62A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B66FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672960287;
	bh=dQKXyKVfq5Egn3x5ZstYLKqxaFN8EEHGhEX6k+TEEkI=;
	h=To:Subject:From:Date:From;
	b=XHRdEpymHzfuW0Xt60+cCRr39QBaF2u3Oe9sM5aQlqlNdl1Uw5zDWcbxBnIqF8bhx
	 hUSQ5nQSwuJ0PGpNL7Xa7/cYzwruXVUkS7wYuvPNt25l3EOI4azicUXWuLe3YI/y+g
	 0ttgv5g9iPDLaIQCK4typMcl+z943v6cGgudtR9GkjjGTuxUfOY3nY7xCd4kRmuz4d
	 V/w/0Jpg9LjCHL/sD/9Bs/i4Sla7uOTLLFQJx1P70GcsdHpSOqwYd2wYGyD37UHU9B
	 Wb9E9M5qeRMIElubcOgdIRCtY3112bIf4IFOi8ovLZvYU4ssx0sCUZDwv3XLC2bzf2
	 r0Mrb5+cHnszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7A7C4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296028744.21268.18318972044072122599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e857bb709b52d6d2c015ee99605f19f7e277be5d98c92c13025a022277a6b7
Date: Thu, 05 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672960287
