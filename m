Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6863C427
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E43CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668556254;
	bh=1vYkzIRk/kHTIpaXnN+DzMK5Lmz2gABSMQH8OAdPtyA=;
	h=To:Subject:From:Date:From;
	b=S5WQ9X5652W3oS618wvh2l30C5zq+HgZVNmZJDFs6NWEesfHtVBWQWpRZ5bwqpkub
	 WcUdCV/y/ylKpAsC7x1NGsRvY+pRTQ6NgzyQAWqEhL0DCel48VFcIWHH3Aioet9hI2
	 ZljvIqXcFEq4CGCy2dTqNx+HSRx9P2rT5EJ5qfpgi8xE0hScKlZFhkeqj5DO7iEuDS
	 D5p4jlEEQ3w5E/hJVWUz6NxnhFaMdGJ8qyfnBdVzz6vo0S7+XoxDSST3xd2NXcX+qu
	 GQjOhBqMgAqRIwQSWWZNsx2pEISBFT/ARII1AKKQ0+pSjiqjo02Yhc09mW8t7uPjdH
	 xWxznV0CCZPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55435C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855625434.3180.3022850785759285701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71fe91229b06f56f17b9324ebbff3d6adb72f0284d7d569efbd4437866d6d90
Date: Tue, 15 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668556254
