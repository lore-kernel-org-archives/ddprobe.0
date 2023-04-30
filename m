Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C9C2597
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 14:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B84C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 14:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682864166;
	bh=7B4LZOqdv+DUr+y2AHReVWEUaX1svMn171mXAxKB3KM=;
	h=To:Subject:From:Date:From;
	b=Qn6xOrJTAb2YgsPAdedN7z7hhPEwCh8XGKuif53v4ZQKRD0RADPN+yg5O5iUxfaWO
	 2yaSbv8fvOEND6Yt37NiWxq0gw8NkFelRFvoMQtoD77VldFsCToFVuONv5nDUQ/uTB
	 1rawRmX8UYEjkxyNGABImEM7g1ReKiNfNeiszDX8HqaFwY55aSvgCwJ8vL/AM6GvJs
	 b1gzYazHujofcnJOmDBUMYW8ZkqcfqqMF4lSC5W68XhEZMoz/GTuqUKpiyRm7nb5qg
	 6er++27nl0cXEeibn7uDvIL+EaL46oQhx1SGE3UHHcP61bFdzMofH+89UfGhLWvZ0l
	 W93w/fn0Qd59g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE91C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 14:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168286416575.9775.1387128055255239968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a642ec09170f5daf57a4bb681605eb7e261a78bd0f49a0be7eb6b071a1b26e82
Date: Sun, 30 Apr 2023 14:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682864165
