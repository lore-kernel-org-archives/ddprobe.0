Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B24933D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647005784;
	h=To:Subject:From:Message-Id:Date;
	bh=N33VgC7Fs08hXzduIjOZAHfValenzDQT0pby79ZIXSE=;
	b=akUFdSBd629azmWHo8hQL1ZJCK46trUlifNipxQoNROVRb/URUWXidyGHWwQI8Wr
	zA/gnpvmJ/PNClMQtjD71xokmOlcyIZQmA2NvxC7xH97TBQRiXHxiToHXKVEsQMNfjg
	+M0Xkf8CHeofQuUtmhwtDZxApfc1Z2LJ54LwqNgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647005784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N33VgC7Fs08hXzduIjOZAHfValenzDQT0pby79ZIXSE=;
	b=M6hcTfHzE26OzCz9/RuTrMg7HVNArQjuJtxP9dnRnWWUR9moasRPgnZpUUMid/SK
	tNuCbH4Y6o4j+qrrCHboQ0kCwKfwr0APoXXTZ6KbBYuI5A6b4pF6OXJ1N0QdtXyXHo/
	ecu96P1bAZwti/YGZqg0V3d5kpNoVLMBwxBE0wYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7931dad6-1acfb081-b466-4274-8413-0351f58bd2bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f6b858b2d679589ea76f3f0029f59c89aae823349799f2a99fb3e9e0776015a
Date: Fri, 11 Mar 2022 13:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647005784
