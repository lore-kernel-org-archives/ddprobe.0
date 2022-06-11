Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598CF2568
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 16:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654964819;
	h=To:Subject:From:Message-Id:Date;
	bh=HLkEgnds3ezHnP2k6qCi0kdWe5opLAQVdIj57jakC8U=;
	b=BAOeI+qKux5GbwOyzEhazypTF1mLykPr6FbLb8yBcveImDBdbyTywslzvqj83M2b
	wKDy5UY8/SfQacEJQjyqMrq7CJ9FHmSoKOyKn4SLupXmNEdAxfdSsAbCpIxj0i8du/n
	ZoIz4lO7Dri9BnFRTJrFEowRfSgR5i8lc1B80OuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654964819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HLkEgnds3ezHnP2k6qCi0kdWe5opLAQVdIj57jakC8U=;
	b=HwFCJVcMhJSOWTw1RP+gTnQm8MMFsGkK3jbj0la7QBU4n7pmDdMLhDcxrrOOpwTi
	VQGcvzvyJYAZB3346/Kn7p2OFOrkh34ztOSH5er+bKKtpx0JnfnaxnNLDJD1BRAbMtx
	p3IxEeJnGC/3REceksAriNHbBrUPwOe0MPo7nS94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153971525-f11f520b-d176-4092-8d3a-75bda48f723c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 163aade2d6dc1dab4823aecd44ef3ac86cfa9ba7d84beb04432c3020cde886d7
Date: Sat, 11 Jun 2022 16:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654964819
