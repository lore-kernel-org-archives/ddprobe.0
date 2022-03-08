Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932A92F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646768784;
	h=To:Subject:From:Message-Id:Date;
	bh=sVBbZWELoMYOzWurvxDEjik/B0wUcQ1nddUeU6ISQr0=;
	b=DgD828ThzyLf+7lvt1RQodS7WE4zVhzGKeq97b+Y6BAsjVTEBEnOESIoAzlE0YMb
	6NOR+zqw9MWwAfDOS5aBOUrFnqfS3DGcz1ewtD8ygE0Q5B7nFOaQqIzOU+1jrSmDAIq
	O/z6Ql4CDjcXag6nC1N8034EhCyavX6ToU7r/Cc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646768784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sVBbZWELoMYOzWurvxDEjik/B0wUcQ1nddUeU6ISQr0=;
	b=BqUOR5zSQNzwKEgFPNyy1Ggc6E1ghwicIkLPeSwTK40v306a9usi6mJ1LrEjqpyi
	h9b3pk3lSfSYAvxCG1z+Xh6wx1gmkuRIkNIn0QVZyyL7fittgEv0pv+Oy97CansWd//
	1TXRb4s98hxx8eIYTEH5Hc7RdiFR1uMgHyhFB5yY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b118565-5ca780a7-8980-4a48-93fc-10c4b002a616-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f178b2b09601848202fc9c48e6cb51e8ac788b2718950fd7fcd403b95d4fbd2
Date: Tue, 8 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646768784
