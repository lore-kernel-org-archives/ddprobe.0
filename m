Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68762F33
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F92C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666212653;
	bh=9bvNQrQso7Iu1PLyAuwcT8qXt9D1gsDkk3qtliLTo1o=;
	h=To:Subject:From:Date:From;
	b=iyiBUczd9A9Bt5uJBa1inldX0P+SDxGVWu/CpNKpfGeFjezBgpGthyDtjES5JoDnc
	 Fq+sXhfJX7qaaLd2WplXE3FgD6HatEhNyvHKQhbzqI8JVGjO1QuOjCwPaowVm4DADO
	 xL5tdRZIenl3HjGE4mip9oBJnfKPllDXZwuBJEoSAZzcwkF1DTouIFPrtmf/ULX2Pb
	 kBih6kVMzVYEy75gyeAwUJ8GC1csWd6jv0tHqFSEjbz0WkNWjAZme/vRq7ceuyx5cy
	 W0KXPB6J4a0jFriDpKJMidN6rYjjv9Ogvh+PkAsXcSfgvxUjx5gfBxiaOBp22f9WkQ
	 XjtJ+qqNPwRWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59253C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166621265335.20641.13812465607772324270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92fafbb6ca44be7c5d11f1b6e9644fb1b510bfb33f7452d843e2ad051ac6ea7
Date: Wed, 19 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666212653
