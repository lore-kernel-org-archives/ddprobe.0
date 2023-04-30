Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AE22597
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 13:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD313C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 13:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682859965;
	bh=v1zF36QqMQ+Mc4ZsSIacoH2zTv6Pw3NZ3HYTqM7j1j0=;
	h=To:Subject:From:Date:From;
	b=EDlyBSaTbp+FRbyNtK4ummqsxH9VVC9nYHiXQ3MANh60Me9A7+A1ga56grcuhOE2n
	 xbxXgCfE5CqOUKSoR8TWGn9gsUyG1WGTUFPsmxLeZ0aVFsHDXzFdJgZ/2WasZqQtM9
	 aLUVtA9vHoFNfRusaHeJM+kuRg684QfbmdEa7k2WtKMDChKnsU507FsNXibMSxKUFG
	 jZGrMDiurD+xs7ZDFp6VEBglshOUcTBaniGO0unijLhQumdjBWlIgFFhXTOn8vSa1Y
	 RRK34JEltOWYQ9KbYcRMZENGdRra1u8yqCvK7k0/sVHRAjWDfdvHPDQ/ADT+a+H8FD
	 n4u7mkLQp4UEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1F5C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 13:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168285996575.27808.7837863793600913556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4843ee1b27f227d7ce53bdbcb218770917cc390a1fcb5cf67126d59bb06aad3e
Date: Sun, 30 Apr 2023 13:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682859965
