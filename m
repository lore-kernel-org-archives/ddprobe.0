Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE0E10F2
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16AAC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688867828;
	bh=u4MsUj2xWXMNESirwFfHzqaPGwfnSRjyWiDl6cGbVbA=;
	h=To:Subject:From:Date:From;
	b=YQgjdl5yvplkk+rUfF1tbudXjvUFC+tF5vquieVTWOz/K+9DDkSvman+rS0UOGtGp
	 SiPVmCSBhrYnYgvGXc/xYtJdtWRYC8MChKQGbY4AL3yDI9mJ2pD1fbcrBBy5+357Fk
	 Y2Hr3eXG4GMgJGFpsNotNs8nsSbzE9fkQBN9UhaU0+LN9jkXHd45Uw4cER9tbVTlGW
	 Y5DYNBiKQ0qVz0B0suRk3jGrCWKmcUQhPNei+7PSPgJQeuZQ4DHl+eDa7TmHmGm8ua
	 UqvDsvaePWofuzsU1NWCjCEnsLSkTXy5qh/yEdHIxNamkgHBfX6XM/8mDLTiJrek09
	 LC6xSObqZKVMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4366EB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886782868.23449.11634780200408623892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4360f99a01fe47acb4efc2a13915189315afe6225473ce7f5b319cee90f711fe
Date: Sun, 09 Jul 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688867828
