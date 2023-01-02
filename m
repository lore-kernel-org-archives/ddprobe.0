Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD36528EA
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81850C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672686687;
	bh=ZxkyNKOMLqQzlkr5Gq5Qksb6Gi+tb3aISNe9cOA3sjA=;
	h=To:Subject:From:Date:From;
	b=NcCvIsS6vBAq8k80VQ++vTl0ELJazhIW3RPAC/0iwWffmJSMOpRohFIUdHkeBVlao
	 hwTbeHpqczSelD/QkBJllZLF9UGBuod9ZYlpD3HGuPH14j4mb46BEYOTOBzFcCqQYq
	 uCJKB1IbaAZu10NE+VsvfX6vw80HYuPJ+op35R1iBQB4NeBA6MASkZ0mIC2Nj/+kpd
	 ZaDgVLA0xUh8QZEzpUOq58zhLHmxdjjRfQLaJ3R1U/obJ5vS1BXE1cZH9zQvEtqwk5
	 +sdsGVY1BFMOsDBhWUz6dXBJdSRf2xHtEe72qEF3Z/A43lltXIMZP/wLHv2zq3kXHp
	 iyHFIV3yZ0nCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64742C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268668738.15943.6262209036873312903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02acd9c60b51aa0b4370740f1e03866f5393d1975cd4d093c4f40b37557cb164
Date: Mon, 02 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672686687
