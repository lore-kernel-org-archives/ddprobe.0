Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF951C29
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 10:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF07C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 10:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674643985;
	bh=QiEVHoJGIoEpNgbLLFz8Lq+Qf09xBnK9LRwL+aUyAQY=;
	h=To:Subject:From:Date:From;
	b=a71lClHV+oNNEzNz6pU6pWvLCgrxjOuMD4piAd7bGEmY7zDv0tAVSL3VCT6XaCI+s
	 6cXSM0/V4KhQkpN3U/EgZGhPYApCr6TFwh3RUQqXNhvI/0h+WpEMpQ8aw7L7bjGB+1
	 WHkdd5QJAPCe8lSt3+7kjCX6LmXelCkgsX+AGi0PTDT/xHWAqj1SpI9N/ssw/CM6Ab
	 pH5+3VFAHU6MY5JalL85wgFzwhjKZw5VkwPvyesdjgqMd7zT/V/W6qGyHwqeDQ30jV
	 6QsgpPAJTNxvXuXQU/E7tE16hQhkj0dKI/u+/xRWqA/2ULQShWJrZBpd+XP/mphS4r
	 GpCmr7fqkYoyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE4DC54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 10:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167464398577.4163.7784640635098532235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6ad5aaea95b74e04a358aa8df78e4180379aeafc79e7e0a0658ce5a3eaa68d
Date: Wed, 25 Jan 2023 10:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674643985
