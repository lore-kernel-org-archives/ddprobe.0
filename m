Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2815F2F41
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 13:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8785C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 13:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676123645;
	bh=Lqz9ISichbfRkX3PkElOC3G0dXWNyAW7/+V+eONB4Yk=;
	h=To:Subject:From:Date:From;
	b=uS4O+WzduP2/+LPpB9AwZoUEHNjxh0+tqirljI4u0OYNCyNw8LVmJ8NW2ESzVLGBI
	 YICRKcIp1nZNQ4rhr8XYBy7BFMOWm0w0KthaJhs1GZ6JtbYS2iGy7njUS/FRlXaTqW
	 nMhEARDjrcTnnvy2SnOuJ5vxD0ce7oyhsx3XtfDqxznBa9Skoi7m61RbXhkumt50K6
	 zHQc0HAN8uaq33VyVDjL9d7C1ioONxHxoty3Ientfd2ZY3LBZq0OhyMxNgDV4+bF7u
	 p2EBntdJJ4r6bdQ4O2GS5pTYVqnMUIdG7xS1xKph5XFaDtoaXe6LOKyKZVx3EXlV5l
	 0QTXqvMrV71RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F76C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 13:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167612364575.15521.884996797089873610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b880f9351fcb7bb277db3da5dc3c071317d1ac5bf15e94e935b2c3044bb6218c
Date: Sat, 11 Feb 2023 13:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676123645
