Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76C7199A7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JU1dLx9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AE3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702453696;
	bh=ibX770I0XEV/7D5FCYBF6yD20W/muXrNDbrjCvtdZpA=;
	h=To:Subject:From:Date:From;
	b=JU1dLx9a9a6zHIBWILVZVjneWi3scW51hXygYhSlXBQtP03rrhr0tPdt/01DyGqXQ
	 wZ0ZAX53bxCgoKajbbYO0zdGIrey0nedD/N1Asu44yofuUTZRFbXwQyz/BQIdzoeIc
	 TS81hqi98OiLzJPm+8KHhpdCypdTY/m4zEZbkCoD9n7wLIqzBS17A1uTr8WqqbYmjQ
	 rA70F4zfodiLKA+96ut9NOSerKAzoD4q002wis7WitxNNsbFOxCi7M8j7C4W9q66cM
	 q1vjFMUotTqoVSTiX+RMV2PlKmKUi5DRuJLOvaTvPIL1lYAI6bKj7ZZXvVa1RqxYb9
	 L7bBj3hG5s1ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7E8C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170245369637.2307.12691973252285752544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9cd3fcacc92a9d9bd78faba5328b6850ffdbfaa896891e2738a0ef4187f8d5e
Date: Wed, 13 Dec 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702453696
