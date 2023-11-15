Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA72171C4
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGPDa6eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF32C433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700048896;
	bh=nzQgpPIN2475Jg9y1oWxlPzh/rs8YpQ6KomtnFpFqqw=;
	h=To:Subject:From:Date:From;
	b=KGPDa6euMbjCrpHxLzpGyt8KNySggn7hAnohjGSLuavyYyUhXuYkKThVDxkiZNKaw
	 DltS0aoPEgLIJYV604xcNV2rNtxxhvluviA/nhWzSFcGMHoevaw0phmv5J2wdYgi0M
	 ZTjFxFgPWnN4gOzVI4zJzWkUyqJnVvke6DdidnyJxfK2aD0++Huu3liiK9dYC3WnZM
	 NxHeIA/vZjLT9w/t5FRTzJevhV2dknQxy09/Tztzr4G5W9zLytZK+SBkTDhaEWPnBD
	 vjsGZQr9MI2Iac+hXebf+FSGe8oodirYkFGhTNGsxK2DHePyY+LKvz/FW/HWbAsvWa
	 PgQpqglVIpitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75EA4C07548
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170004889647.23651.2655501717880686550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e92997fae46ce32385882c349590b2f5955e36b812b9bf0c82de4ff5807b3ca
Date: Wed, 15 Nov 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700048896
