Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3751370
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75AE7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668921054;
	bh=RyGD8EOib+ZU3fgz0Yd6P4U3g4IXkrj0mQvlRqfFosI=;
	h=To:Subject:From:Date:From;
	b=GgLhK5sBjZYdGVLkh38dAY4EiHzNpUlgorCoR38xi13Ij5tb56QaUKTSxdceXg3RI
	 uzGOMISiF1JOeGcn50EZXsdOQt8kqYo33e5OiQIYXb9OAU4gH84IMmJOaZyCkT4eic
	 Gq4QltAXO+unlHiz27SGyiNRKp9OCvQBi1t919BFVtnTJmT3NjdrbGZ9CCsYLq/1xG
	 n/yLFtcDEFUAe9epWKYbfblEYlckLGeQ/80ETj+HCUZjctiqVGqMDPK6em6HqJQt+y
	 rF0cxiuDw3tyNDwDBhItAXvd0NHDVuA7EKgByZo6s+ksB7pa6jz/+Gg8fFviEW74UK
	 imCKKek+LVYdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56472C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892105434.22825.6780197460360278359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6580272a789699b1a3de7025428d8a5a52489e32e4032c61d8b5129eea2d2510
Date: Sun, 20 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668921054
