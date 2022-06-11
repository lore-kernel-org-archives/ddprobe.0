Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F350764F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 04:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654921079;
	h=To:Subject:From:Message-Id:Date;
	bh=FbVClSdDUYarejCr/f01tvvC+zEe7Jan+cL8rQwz/ac=;
	b=Sc7H4vlFFBZqPV4RmqZyETPzC0eKp1dE3ZBDuGFXRS3cQ87NTlkX6QH9WzEuC0Jf
	7Nhjb49PPJbLB6QDA7o+pSfzk5Dqoc7QIFodHgf9EUAtS3SYs4hWm8xw1TMdZPBqTCk
	x8bYpZwkI7i6A11pNn4vp8pj1UHkKJnT5aMOuaqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654921079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FbVClSdDUYarejCr/f01tvvC+zEe7Jan+cL8rQwz/ac=;
	b=QFxdpT8iStcvSkwbuxHJ0yL4M+rbxVMSCXAS/JQV7B9Mk8zw1yPZQROS7dksu2+i
	p2TY3XxxRgHzxdNqfqMfx52Ryg/McWUSZo3mmid/gmCdvbZ0lSW93MYA3FwSFC9Ps9u
	0fItYQmUMd0CM9ezvd8JlnzQdN1t6mPewdCBqeqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150fba9ef-7dff4550-fe85-4e97-bdc1-e3a2818e14a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3159534ad0bd1bb785072761b495c36ec66f92c3474d2d1836b25b4042e9e7a0
Date: Sat, 11 Jun 2022 04:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654921079
