Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5488256C
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D98C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669212654;
	bh=5+OwyTx5Oj3UvVmdRG2iT5S8R3t6a8HYH8S7v673ugI=;
	h=To:Subject:From:Date:From;
	b=dTZ4NtO53DEFuGOo674jMdPKXCY8DGG5EBZLXfhbXeKtGc6vo1JpcBuPHEEoT3rXi
	 sxQFrdIAg56a6fueDVvLDMl+hppJfgGIDxG6PzlIsz+Ki5IYCl9v4CsSgnTSoAxIzf
	 fgDSI8TQ0ATqLba5+dAoFFX3jQO8TZ0zRNlLPZHnbZ2NOOoNJR0Ofz2S9hM1/7xxnu
	 AbDX4MXm1ZA+kDwrnMEVMZNYeEXLYHzJ8ZEjWmmOVzui5wl3u6UK8cwhtub3DSoeJY
	 3dA+f3avdhbBqzbkRfTE8SWrSZEtrgfDmT1SZrq/BnqqkGyuScT9zg7qCJiNdyALQc
	 qTraFrPjRemww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59652C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166921265435.13345.13577138311724927913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7d8bef785ed9a36764993ddf396f2988d696a0c5dd3a99c6ed2ad27cb7e4a6
Date: Wed, 23 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669212654
