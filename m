Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED862F48
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 22:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9032C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 22:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682981585;
	bh=DtvEki7Utp82dyDCEiVL2B67atSWHUWpX+XhCWzRd1M=;
	h=To:Subject:From:Date:From;
	b=uew786EBUATzoOo981v4Lysirr+L/BV2r9+D46Pf4MJT0/ha/i+jybT/PggcdxVir
	 gI8F0hscLnkc7vHkLMZY/Hiwf2wLSAupEQFiBzLT8oFT6NG4x3z74U7eB+uG9xhkKz
	 M7FOndnA0idOWFRg7dk1T4pUY3YJiNW3OWvCAExs6rLICFezHrJUL0jThDRPtVwVWe
	 adXDPhJ5Q0l3sU+Ba1zlhdBpSuRIrtYGQ+YmWaTHOhEm8p26PIrK3H3Zd+TzM2oZ2h
	 9BUByAK5Q8xX2c+HK6/SCpWX/swUyYlv/uhmZ4zs059BFOygFceHsm3hlV2OM+vpQH
	 AZOCDiot8F0iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C000EC77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 22:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168298158577.16123.1786469379739056405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631e0005b7546bdc2bca9bbb0bbd7ee47f713c4af9805116e45a571bd8cc11fd
Date: Mon, 01 May 2023 22:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682981585
