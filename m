Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4877E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647001584;
	h=To:Subject:From:Message-Id:Date;
	bh=X5w2mr+oJ2i8UN78nwtOYQ/Y7+HIbR82F6L4C/FYOFg=;
	b=hxWgswrN9AAyMO6kORPXTx4zeViPdu0WVpn9P6mA5k+glhPGXVy0/hfU9plwO7W1
	sId7o8HYWt33tVWdUhZpV4CHBcACzmobEEcI1nhehcO6SLna+1ZKZIcFsNyqApqLjgt
	ComTqXcW0fRnfz2prQ6/IV42ma8O8NGIQQZKvkvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647001584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X5w2mr+oJ2i8UN78nwtOYQ/Y7+HIbR82F6L4C/FYOFg=;
	b=iDWvtj0VcnmKGLUFS7kbB6Cr25MzsAyriTkfR+fKY120MhCsuoR9A7T6tcja2k9E
	dTUaYIudZ75vW6OubVLdjO78gg0BDtYkj5x/x+oywoOVHQqjeXL5YufsK/kYXio8m+C
	sdwlqvmLQBCCqMI2PRqwoa9UKgzdI61wBtNT4Ju8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78f1c468-531a7efc-c005-435e-ae23-7b1405ae741d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8af0697280c3a7b48226855b21537afd1a680af6dff494ac1d51d8e141aa5777
Date: Fri, 11 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647001584
