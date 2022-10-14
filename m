Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C8E7B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAFCC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665729653;
	bh=KGQIE5HOsmNhdWQq2Mv7KUl6dfD8yJmeLF3it5YzwCM=;
	h=To:Subject:From:Date:From;
	b=bO3drOmKH47C41tfVyM/64RERMolDt5TmdNh24z4tyMyWM2l9WyB9OzwQJR0e2QRP
	 moMG4tPx2v4P0ssZWXUO4NoghJxdLcdvM87uWbT6qPpsfzTwR27LsCT/YB8aOC8kZh
	 R9nI8fZMTdt5pQTABwQprsgu4ZFph4JanGTHcWgWR47JVn6800UfQSZ1yWYLxUi4FC
	 wDtXeo4v/SogJiwjvo/6QH+32ychmk34HNoPRniWI1pgjhym41tEKjQKZJbk7Py6aY
	 bC0GkbdiLr0eyluB1WBb1i7YNYLKG8kVj20Hl0JJfzP/BCiGelI9JH41HlX8YRKb6F
	 AMJmHr5xRdGNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54930C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572965333.3516.5920514216633117429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb5c7a27ef2620e26241bad205de037261740f34e722333b3116409c65bcaf1
Date: Fri, 14 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665729653
