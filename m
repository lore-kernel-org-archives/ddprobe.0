Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4AD3C0A
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCC0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666198253;
	bh=+bEHtzcwvELK/eF00Pu5Dj4rgbkMvqjiA7eMSNkFgOk=;
	h=To:Subject:From:Date:From;
	b=KUGf43kS05S3WFy0OMt5j6rJqf33v56FmL5Mr7ImV4dl8XsG8K4N//QHFtEiOZP6y
	 7Z/rhCyektPcNLAwqSO9XiZB8GfhaYttm+KwD2Ed4FXUbqzjPLNYs6azIpTvlxQQjq
	 xtKzwpl1B1pvJVQofkz4VIVdIMiGDpIwKVfPzX6zzVbcyScmyyhNW3pvW2A8VbCgnc
	 R8Te9tLXi05mWpHbXZO9W9DeUrMPq+/L6wQ4yiRJIzBqE1n3mDjZPmZk2OhAVVbWSG
	 vSpAGAbeYgdytckrmXhMWGzoPCAHdkApryLRnf5uum9eR3x/CjBGJ7zkTIqL8oXXF/
	 B+YEQRTHxZiCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A2CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619825340.6213.579110395988752916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fb95e76c83524a20ddc9eb02a6775480c1540fda67f62369aa3ca4977d47d8
Date: Wed, 19 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666198253
