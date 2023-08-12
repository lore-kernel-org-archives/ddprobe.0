Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7611847
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 07:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10D7C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691824388;
	bh=JyDLtVhgkjBnGAcLruGH/yINNtW/Q8/l+eFKfALxdR4=;
	h=To:Subject:From:Date:From;
	b=YSj+NbnWRhQ0qftIjAsoVwlNCg/0bHnZ+jDt+9q+Vang47RF6rQYjFQH+vC2vkHIM
	 ZhZzYK6be6ug4Bgcz3Wwu6uHwB4ZjfigF2uuD0iX+8W0vvAmdXQEPEs7ycxAC/Y9ZY
	 y4TZp98nSUYJauQ8DSWV6A1o+tA8oIOlDeKByK3SIxkQRWh+xv8ozo+YJEo5+/v3ru
	 d8LaZqC2IpU+fVwBCiD1JAtb9Wnz340cVczxOkwFIcF9z9odA0prat73S1w9KePWZf
	 yjvfYqSWmOzORmd0Lb7X2IujiP75hqGz4Z1Bz7O+BfagOF8HfFtB8E4TkopvZ6m8Yz
	 rTx4YQf4KPzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B180CC0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169182438867.3336.14368665924847067468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1eb8dd7f93ca73c2b6dec734c8b8cec8f28f075a56d7b86d0615994a7a2e73b
Date: Sat, 12 Aug 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691824388
