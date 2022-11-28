Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7D87C
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824A7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669594854;
	bh=zVsswnrRQ/8UuUPNecEgeNF1MiikBYvnPWj3DLjV38k=;
	h=To:Subject:From:Date:From;
	b=n9TitNizF4aizRZF3cIAvQBKXyAXlQ2AsbeYb82exhjrfwo5IsfaUX9cjcpnmpb49
	 wAMaULYihyxt+oYDyA9nfq1xGEAhLwp5B5e7cjuAlJuChlYPhzrud904Q3uWSdmnDx
	 5eZBxlugoEf0/pfPe/lZYJEvm3eUDPWZsNHmNTAMdp2EZ2Bul/hsWlUGQDSyFh4QFP
	 OdX1x3bSpld4fRqSb2D5gex1LOjWsBM3FvNKVQVhprPK8cl4PsyRlal3tjef13wrJK
	 T3ngcFb4lcKpNoHMEeDpYW1OCfeC6uv4naC2JwVLr0cuRgDRh65ORqH6zPWobqKbCD
	 w35T+Iho4Ibrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592DFC352A1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959485435.16333.7699266901678082001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f33f0f4e3087c98b54d5054828986b5c8e854d9d9b99b48d8e32afb59785d0
Date: Mon, 28 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669594854
