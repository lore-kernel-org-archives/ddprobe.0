Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12132F56
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E717C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665427253;
	bh=vyBwYhRhcW1SeySzEey1mnBwmlJajkHmsXsjGBwIrKc=;
	h=To:Subject:From:Date:From;
	b=lFiLuXcvR3cQIv1MR/CXkP7TmaRIT0nmsZ9OkB/vk80bOm7E+RpD/WbbXmqdOKalL
	 qK3ce3B2HkQ8nxYDxNnOWY5wOHHIx1hAJSw5kKtMfKJBMwumArUFh54rIkpM1qdpQm
	 jbz7hFBE2nQFHtfc2I/PEaDzGIs6HZeY8c/48QNgUxns9QEvuZKEBJKwbDwXwzkwHM
	 nG0BRupu7eenQMe5X6ehX3n/FAMJRVjYZPv+3bObsi3Kikmy+en+dpTCO9xvDh95Cr
	 EEX6T1zgq8U3J7U4OKF18P7O+j0vvZE8nmYQM4hoGOyHeIaktJxpGyAYVpEqIICxDb
	 1yOq17cktvZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530B8C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542725333.7557.6335402894807520536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64b2c2d06be95f82c2972995019b224055d62a46166a2da659d38c8be4fc1f3
Date: Mon, 10 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665427253
