Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A15C171CB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 17:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF9EC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 17:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686243786;
	bh=RfotKVzGBr7NcE66/nOZWgx53OnuQ9q5L56uyr0X0xE=;
	h=To:Subject:From:Date:From;
	b=C+J9URfjn3eQx8hLxAGh3R4yEtBP8TD7h2fIX/83zCrt24r8eIljqsBdtSU93kjS/
	 OtSVQRM0XdcEdmDeJODAHW6OOiNcSn0NYAFe7mXg08BK26nmMNw6yIaNLWNZwU5WpD
	 Wz/tWD/vx0qlRhD3N1O7mQxNq8SHS17fOyy4mPLXjiPyN7o6FEfAY45M8SlhUpb3Mg
	 paG8jh549w54zLfNgJafiY9VGjd/WgNq3qpdbrQQXaS7c2Bq5vy9OY4248tcnckiLv
	 sFAbfj8H0EvSTHiacMhYeR2BedyRxhGNRdWF5bz4RPBkjbJAxh4IUk5rgJwY6KZn4A
	 H4OWqeoPr9GqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C924CC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 17:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168624378580.12339.2761735747589124337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a86e2881c917840185760929dd445d3ca45ea3413b8fe777f623832a27b2ae2
Date: Thu, 08 Jun 2023 17:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686243785
