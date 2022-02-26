Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8752038FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645912585;
	h=To:Subject:From:Message-Id:Date;
	bh=nNW0ZeWc5hRlEr22C8tsV2ljhYSQGOGKEM8iM90ry9o=;
	b=Bw5yAYaw+Un5de4KuqdFBdsq6JI+WyQZWjNWs8AC/h7IhOgTdrZ3LWY612Bxg4cc
	Xb1YBOBYZ7XmhaLXeJF9kIZFd7axnZjKM74ujJ0LYLyugfE2osVhMOvdwZmC4wkRXsw
	L85BQ0/+mUsALHRvJy0zwnDme5Glsmsix7uJW1d0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645912585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nNW0ZeWc5hRlEr22C8tsV2ljhYSQGOGKEM8iM90ry9o=;
	b=Nk9V8NKnESJk4CSZkrAhteRldiUHLQ0woGdTrd1Duf02VnqoB8Zncf8Ud3j06rCC
	ro3jDcNa0BGELKTUTs4ITd9Yi0sx8s5/4Lmuc3BhNU4o39TmzNkuV1NDEb+xFqyo8k1
	BHE5e79jCalgCpMDPDmAT7c71QgiCkAhY0bHU4lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3808f27a-9e136efd-3be6-4da4-bd08-728b17ddba18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d39446dda2be7b039860ffffc56e6638ffa7c5fd6279202a3e3aa65b1289bfd
Date: Sat, 26 Feb 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645912584
