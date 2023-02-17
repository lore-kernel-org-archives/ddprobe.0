Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD715692
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 12:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA956C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 12:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676635985;
	bh=073HDJ9uZdvkenWbgdAEN5r4SnfIcXFTcFHPvznb3yA=;
	h=To:Subject:From:Date:From;
	b=pdqQCs6qIM2f8e6RzcnUAitoWVqXXkFtUqr5LslyPll/0hd1Zz9VPDpWbSkd0hEIx
	 wJieD2o2kiq8Eb7D2X+SsWF4wpMq4im+l+/nc/RrsV617/Sm8t9HE6+01QhxH7R7q7
	 lwzJAO6yaQE5/YQB8oD94+hW7hyJ/1TPEyKnXSTARaNJpGzFvJyLD9c2vABShBHrON
	 vAw4v4KcVg8nakXB6xYsUHC6cGc1kw1m8nJ5TQtYlF61006tlAhbRnYcbOuAjzKA1+
	 JBCVMKYKg66ZjGVDz0NVqWRbvXL8H0UdyEO2l8I36Hp9g5DEg8mfT8VxASENla0an9
	 LegE2G/6lMjDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDD5C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 12:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167663598576.11598.2809787821521480036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074ad0747fc872076fb8c5e127d874a356d8b2ba47a5bca637ea04f57a1baf88
Date: Fri, 17 Feb 2023 12:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676635985
