Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867D58F76
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4411C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686296705;
	bh=tjopwfw7HTig4D+yqEDw2p/ceZuBG/N67TZY3gKjwkM=;
	h=To:Subject:From:Date:From;
	b=lIPWyR7wgLq+nelEx7oEsycJpURcMT3cgxbcTuAsf+MSiQ8qUAYtSbcLRhRUtKNRX
	 Lafxa4rUB4Ik5+kesKlQtZD9hZFNh7LSYZkIzhkHV/P9V0oso2VAcPIaQCCWkHCMqb
	 96YCDk7lClVpi0zo1ybsLOiq/7UIaK7nKAK5fFpDtVAp/lltIvhq4XEjUJYloMk9BZ
	 oLURF4o89kwLMYJsKcnZf6BT4H1UajuQhHVK55ziklnimVOzAU2Vz7iD/R29smmATH
	 XY6/x2MBpEn9JecGxYyX9S9bkXvuaN/wwj+yLUAolo6bIvdwhCCtjAiiqMiQgvtvjH
	 7O7Qp1FKax7GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A57C7EE2F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168629670574.15180.4779861121036514580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8f8971da9d3860b908709df07f2df94798b3e92dbf02a4a7115556c6c43b5f
Date: Fri, 09 Jun 2023 07:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686296705
