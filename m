Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AAE944E
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 22:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0E55C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 22:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682028426;
	bh=zUwVF7eyQpqKe57SokZ5pDVSM7mfzkkujNhZ+0E+hzI=;
	h=To:Subject:From:Date:From;
	b=BUNN0bkMiU6NYRkHdW/klsLQpf3r9LZEgCA6Wvq6ZHYZfzP1PXiZI9ZYNPmb/xhO9
	 8OIYr88F5TAqUyD7p/RQ6Jw2jx24oc5+fvYbd+IaqSJv9tFKbSfsiSpDQJxXxBbeY0
	 IC+djYfUrj0+3TzwwTIMPLIB/zvq77tKI/7xMgspw7v8xc7/z7FlwCoZcnYXqYek6l
	 AkUvvP37vBjFOlMBr5c1OSvueFn9HTI0A4qtlR4z5KB+5xdUm61MBwaBtJE+n6sF1/
	 plGt4VgNE44KO4PNkitJjDjvMFbUn8D22lITQd2t70nUYXFohxkbBIdXDGxvIVTdrj
	 0iSQ32+5Y9yzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C165FC7618E
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 22:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168202842575.26470.10067358863567088774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73cb85a5bc987a70844188f1dc886246f2c38e0e03e6023a7e80384f17dc9063
Date: Thu, 20 Apr 2023 22:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682028425
