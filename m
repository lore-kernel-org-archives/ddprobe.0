Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F79A29
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2E58C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686192186;
	bh=v/lgM/fS60PZw3EtRKHxf2bNsTMD3KXnZXvPu01mZnU=;
	h=To:Subject:From:Date:From;
	b=ejHmwnjdERmrNZ9EATLs+O3VEsOw7uoiDYRNjicTTasZ4Dj1MX/7R90DKDa50xosR
	 JbPiA6aoYJcTI3EMo8npHLY6vkd3Oud1+aA+vooMXkzI5YWip0waG6Frvt/W+ZKWlB
	 a8YrS3+xyfgYuNVIkjBB7eDJeE4riZY2G31NoSCyawkP9IRNOMg9HR8dx3JJe9bfT3
	 +ziPj4fOkbZ8qqRzAW+tCHAdikMy7bNjKpQNyG9MasGe3/sZMU265O2p4EHhBQhYDH
	 2ijB7Rp7dXDKquZeRVS95oF1OuGyRngusVA+lEtennpUjNwkIbwhzHGpMteglLq2wC
	 Pf3beF4Vr/KoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0EDC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168619218575.7197.15072273102119974688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e880e74b32d9619a2eb8f4d178846912f6787ec11720c8d30174689827943188
Date: Thu, 08 Jun 2023 02:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686192185
