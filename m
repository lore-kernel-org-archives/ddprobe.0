Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B8E4A13
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ACF4C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666050053;
	bh=D184ZOEutshoRUyy4MYnStPyoorr9bpQqNQunhXM8VY=;
	h=To:Subject:From:Date:From;
	b=XNuk6bTazuimPGs2e59XFjoJ4N+W7k9k7J113LidfyjATUSKM+xcQdHZPnxcfcodJ
	 NordsOwqosIoQoD2GxFCZ4BB/b7b9IdhGFj3BYrfkOQk3D+QmqLfu5AcMkyE/zCQIY
	 zRgDO+1VcfbWBTfW6CBvlKOSEnwRcYUukEzYNmzayIyay8iZrImXt55O3QQEdnSgcD
	 SxmU+0u/xah2oYf+2GzPeMQn4mE+daL+jKxmZWr46lkE9FiyhEb5ce6EOHubMai66x
	 xwjRmU0BQ+sS7/pmLPplF+K//vAQnmz/t5HVU0kCf3yWEw6+MxVSR3hC7FrGg5Mr0w
	 YLryvUf2xDkFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5428FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605005333.19918.1187074862046953955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f1bdfe6ba104a43c3da71af4eb9f39182b7c5d523863ab148efb6f9e623eab
Date: Mon, 17 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666050053
