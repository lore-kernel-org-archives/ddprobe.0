Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28857B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 644D8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664523653;
	bh=21Tf9eM/k5/8/NrFIJiQRS0VSJp7qPMXm0E4HQPXIqs=;
	h=To:Subject:From:Date:From;
	b=htTpRmVsaMJ3abQzfVZyndIbNkKgXdwOnJdXqfQ7RK0j0WfPtf3TAG5xMnofNltJJ
	 hjKMWyRWbVeLT9wQloDKg/DuiXZ54Emc8hSnRoHSgQ2QFMQQMoNdy7zoaKjc5NrXxZ
	 l+LOB3MDGgCFMbMH6T5aJcRDME3suyh5iWA6RruV2SxEuzNqaa82yangIcg5S1F7+C
	 5332WwwXcnD59yaqAZcGCrxpSi/ShiFWFrFrH3S8MA8XZVbNEV8W22+ATYZW5yoK0p
	 9Bjvm/L2qzXjkFHOEj0r8ZB6VzXyJ++n5mPeKBQExwm65QvAWmxCSthaIRIHUQ6sz+
	 L0YfoPn97gylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F13C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452365332.11121.11952111400385017921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11c7717b14806b97ef2bd3f79306a02e8a39d2ce85dffca96218ec2fb9cc429
Date: Fri, 30 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664523653
