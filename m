Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DEFD2F2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 21:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F53C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 21:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680644225;
	bh=1C1RZrUWUCVc35JxMw3TY5MBXO2PH2YPW2b/zjr2wXQ=;
	h=To:Subject:From:Date:From;
	b=ScjbOm9+6yO7j79N/brAVACbIYOj8GFb5od+/rYzJFRnp+cZ99woKG448Zl/xY1Ts
	 KfmRzMZebg/9MDGxap+ppjD9jbNG8JK7WN+w9Ociu5oB94Zkf14/uV8zUEeHdkFh+a
	 nfhl7DQn+tcL1vz7OE+c40nDLDNmzvyhQqsGfnl0kz5RlNX6omGbLvEfK47W19dwCy
	 p7ULM7rPV+E0ohTkizUeQpvqqbsWYkBn06VliJja2wXxq/B3kUDRUXOKtfdDTWojOP
	 URAaaxgBX7sngxx4SF0nPKB/F+09iPXjexSQyRJp+0/bcAuhkY5DkR415QxP/EO9W2
	 Pp0urXnkENVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E69C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 21:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168064422574.3140.4379704454998037489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2423097e879202c62b18265aae02035ecdc087d943d7ae2e7c5845546bf45c
Date: Tue, 04 Apr 2023 21:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680644225
