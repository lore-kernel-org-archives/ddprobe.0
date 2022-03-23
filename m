Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39DB614D
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648059984;
	h=To:Subject:From:Message-Id:Date;
	bh=YNE1H3TEjqjkANJND5qF6u7yNH6WkCGaS2ot5vT3A8o=;
	b=efcghjCa7TO/JPkmcJ12vSthPRpxScmUj7HJIjBQBGqUNbGjOm3pKpEIll9FebIE
	57Mivi31b9cgZjzxpanAJE26Ssq2Z3UUQ3dFOeZpXdXj8NMyYipAx7m0G279rfWLJJc
	+DA1R3pJMAk8GfbP5gIgb7GirFd6kZmv3Jg+/IaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648059984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YNE1H3TEjqjkANJND5qF6u7yNH6WkCGaS2ot5vT3A8o=;
	b=KRoVxKsiECigyc2NdtV2xRQ/gKFFYejxtYk/viDoB1vD0qL2Wa4NRDUb86kzVtv6
	7kXMthAW3xv/GdbGcCJPdFkJisaJ+rHKpHnvP8HugPo6HahEHTkhFrvhfIbXMPRhR8N
	9I8qOMjncuMozzxOsxFYJx7wm6cXVPWfCu4Sx+J4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb807ab76-fb683bed-8a4c-42e6-9011-bd3ae45e9729-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9da427e0ef00a14439fab8247906422d51e6d562a25586b9f8456aa6c025325d
Date: Wed, 23 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648059984
