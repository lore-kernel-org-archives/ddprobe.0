Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47AB6129
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC91C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665612653;
	bh=avAh+eib2qI9EALyKqun+uOhm+n3W3H7SwNvAp1mCw4=;
	h=To:Subject:From:Date:From;
	b=AXeU7TxWA58ul4J9K5gXGZOYdCvrM5o1knRGe3o0Hm2Z1/2UgkDdFjeymVLnBD5ii
	 1y8NlS7836HJZw+VjWguePdtEGmXh2nvyyqlgNjnQjqtTFam0oq+zZGI3QHZkWr8tb
	 zFJMpQ9P0ovfQ3le/5+Q19sFs9DIhRIKysJAr1rMOL+8V3NJP+55c9SQPJfh5cn/86
	 jVudZrQfxtNr626mCcqhykEEAswT/ArNpDORB/0Jfhmazwxe3AAffq1HqzrfvEHDeH
	 5T1RbfkXJrZGN4PdFwAsKgX2FNnXvYdNWAEQQQi1AnEv6jrlJoUHrGjbHXA/AWSr1t
	 Tf4x7imR330vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6071FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561265338.9706.8325256484957577549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8711777b737df3608fdbb6fd876f7ae53e9a7d847fdaf0aaf61773fea5a3da6
Date: Wed, 12 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665612653
