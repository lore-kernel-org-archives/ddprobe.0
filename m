Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892F51FC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 02:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdEwPjKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00511C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 02:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697596033;
	bh=/CZWYEw39j25aPSyFPmE19OYwZ6ToDnykSydOlf054Y=;
	h=To:Subject:From:Date:From;
	b=GdEwPjKV5rHqcGgQNCEdgZTVWOwL4VnIn5GjOieUiLKMbz9ASkfS9bYBu1eEE86UT
	 ABmthg19Xm451RGBHCboI3MgtjII25t3LvTN1RWUJHuO+2rrs34iDMbJ0X9Iz4jjT8
	 csG1uxggkcGj6VH/r6ZESWrFh6sZnnVy/wXIAFBxIifJ93TCVDvJX+XpY4wMlO0Hc/
	 PxK06VkW3qkdI0JZ71NLg9D1naHRWU1zha1S249+dd3ABh+aDIAp8H6FVHym0/A+SO
	 DHUglBLC7EbRk1qDwd4cd8rONy0vOLcipgqoOKHGgL9B1ZoYNsiYhqDOjBVV6PohHI
	 IA5ErNqZQX5PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D36D2CDB482
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 02:27:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169759603285.5032.1977167253429979640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34254ede11d416e80f675457488609fe322815dee638c733f101058e21378a6
Date: Wed, 18 Oct 2023 02:27:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697596032
