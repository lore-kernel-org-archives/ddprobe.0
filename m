Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EE063C0
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2074C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693302848;
	bh=R/QtckrPx43d56ZJSt8AXWMiMj5pm84EUofQbXY7LuE=;
	h=To:Subject:From:Date:From;
	b=GUaBJLJa+sEgmnV5cALVHdEc0XlVweHLXEFkb7zglC33rnkZAftINNolUfLxko6Ys
	 0kZmddGJhKoF5n55wK7C7n4PSvPLCaLOd8zgrzjxgq0r4Z+7ahenBP2N7CbfIt7/+K
	 WgusCO9WozpFbXZwR/Cvm1hoQ6SUTn4mC6/ZAXQo4IsoIzMBafJOfAxmOGQeFHFB6m
	 sTu5m4LKorKTqM8zbwv5ERfONGpDRlusQeSR+w8JBmPm8vdGIq+yVc3yjEt2wfPqHW
	 eDD4BNdjSU7iFB7zd/UB9zrAbDoqzNPI3+QSwBB3wcpSVNUBH7C+owNE0Z+TXkNd0s
	 JTF4KmZ4MBRBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9CAC83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169330284869.23861.6079146843678341842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06ae4a1710eb4187db419e2d6110653c72fa4f89370db9e77accdf81731513c
Date: Tue, 29 Aug 2023 09:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693302848
