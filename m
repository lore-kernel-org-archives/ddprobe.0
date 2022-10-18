Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC425386
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C562C433D7
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666131653;
	bh=s/uB+UjvVA9GGvinFkHpvb9KXyoYimKtWTHidfy5i44=;
	h=To:Subject:From:Date:From;
	b=jauXOYjQ6j7iuKdaEoimlZMX/ltWKWioy81t8tvOLOjB6IhW6pOAutwaPsjjpx2FG
	 FhmGtHSxeJOb5FVGibz2LyjDfuBxaItkpfprWgH6hdbxT/pzRb0oY7XXs25ARyfgg3
	 A0lkd/rz8mgrk5CB1lJUPOJrsiIq/cBppyeU5he8XAUYbgsndkUgHcpRfQIec7N7oz
	 Z8bs4d+RofCi+EjMgB5sRPnI6G0PhmzWw59RosBFfyL3juTdLoPUKrJcVkWcM4sZcv
	 ArtEeSqU3yEjEscu6JapxQCm040EAzHYS9eNuiJM6hCC6b4fCwi4GW842jh/DK91OE
	 EYZB7anqVwo7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C0CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166613165333.13436.15616048600025210623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2621c122c0d1deda00304405e19c7d72e26351edd00d02a74bb1a8e42ca7ff
Date: Tue, 18 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666131653
