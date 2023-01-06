Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC0B111D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E4C2C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673003487;
	bh=ieW7N6Hj95evEF9LB3I+dpMfjWnnqh3BdbOrV8xTDwo=;
	h=To:Subject:From:Date:From;
	b=YQKnuPcGAetACnDI8nK/b+iH+9O3znIWCo3Cs2nKsks3jrtTWYJm+bEj/qIE6a963
	 X5UfGb4Aql5V/JRyIz0S8Mm1jXv5wnpWzy6yFUpOOQiNDxvPgz15jFiouYsG7JBghQ
	 7QIFTL6JoO8HNFCMxqo1RxF63xhMqgfVASeSvayF+7ztqcWcPFGBKBrSn6XJghwrBU
	 EoZxVyLmenF4p4ZzTS3oGhOLvc05+MQo1ubG8JCAad5jVJ6Y+RoDM5p7FZSzu9yuOu
	 BJV6AcvJ6lx2qxcroihDwjz2yN1x3+rgDi1dfy3x/bgog2a8W1UGd00JI0AcyADRkr
	 pxlUWczyRvirg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72B25C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300348745.15073.8378278720813109990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aee474d2868dbddde8a9a5ae17c0434bdbc22e8b4d5f1305b2dc890da8d147e
Date: Fri, 06 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673003487
