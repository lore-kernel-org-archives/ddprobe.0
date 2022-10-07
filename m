Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52197E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68514C433B5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665127253;
	bh=EV5Gvf+lHIvlP0kPfQI56THt8NMNL9IePYZX6POD/FM=;
	h=To:Subject:From:Date:From;
	b=Qj/aMrLYx3cJJZOxqxTzBOjNXZ21CIFXwSuN1o4s8ixV3vhESghYjKZKlp5/Bmk+q
	 0iG4Pa969cSvxlwPe0eCRweQj7Kvg+eoZQdWD7V7K0ErbmHPbfsUcjVlLp4sghsWSK
	 5o5x9pxAkfjxjyc7idXqFWq8hk9wZ4n4QK7Di1JO/+5hnJzFd7waWFPdXUJQ0B4nev
	 ZOH4MztnX3/PAhusKVWEWS1bDWBBn+MqIuvTljwI+S1eU7fKs4u2N1egvIc9+CWe/Y
	 qf8CKUxc7NB4R1fmPITwqMBMZ8+dbSjnkt4g4OoJO4IIXBOZyA4BIVlGWHqCK7OG7x
	 4dMTcXV63C64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50761C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512725332.24301.13074566683892615674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2f9f75f4dc023611e3add7dd283b5f7a19173c6d9055141b830a8fb114494e
Date: Fri, 07 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665127253
