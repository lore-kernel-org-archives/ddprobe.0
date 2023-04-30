Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1E61FA4
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 18:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2011C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 18:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682880965;
	bh=NFualcBOXkc5QRen3SpjaQF5ve/RZ/5LnC/BmrJOuDE=;
	h=To:Subject:From:Date:From;
	b=AXLZQpngc2d2GNZA48VpBZp4iyTWIM/rm1axxZL90gKC7/EXZbvvn/WmoEZE2db2A
	 +oogXwNf8APwo8qd6n/1ah+pt/eQVjlip9vMXrEWndATJ1w2mPAvRmRfj4rxmsEVgX
	 zoYumixuH/K6d/WYX7qkoEmtPmVuFrOEFkea90Aikcx9izpGJptSIQDQN9amL6A1Q8
	 qighKwofNsYFNfgWmjYIqF1YQb3km8sJovGLsFfDhVAukp/le6XNyZ/qKpirbFCeOA
	 OD3x3If537TDHBhVFf5Uw5eVlcMo1Ne0Q4N9bVqDkKKzCr6FuxOFDl+ZUf+sR3SjBV
	 gYgHNSPNmosYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A34C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 18:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168288096577.9180.9438401164839675576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f46145a5bc0983b7b28f63802de8318ba62049bc7308eb174b7eb84f64e01a7
Date: Sun, 30 Apr 2023 18:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682880965
