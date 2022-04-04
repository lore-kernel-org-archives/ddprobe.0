Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E502F7A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 22:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649112538;
	h=To:Subject:From:Message-Id:Date;
	bh=Bfk2ugNhz9n/amgUL4TN4Crm5H2Cqe9ToHTgF2d69JQ=;
	b=RtXxcd70clMPqarKsYngittu/2uxD1TW66Q+MeFtkr3jw9caBkknjbOqSPoQmqlx
	2K6T+w4dPaspCcfrD2bJkgOwc5Wyyormi/nX0l0XU/OlKfajWMjFshxxrscQUnA6Kc7
	BPPBJ02EvEbplBx5ny9+OH8YaDBa2z+fQWdEU/4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649112538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bfk2ugNhz9n/amgUL4TN4Crm5H2Cqe9ToHTgF2d69JQ=;
	b=IqTl1pVPxZnti6KNaYpnXpbsSpy2+ueUjg3HTi7xmVK+TxgqbNc2iirxq+uAYs1V
	1vhwqCZSCn/OPxPSYg5UnJQiaufVxndZJz9QnNrF3xCSuXelYDm6roIdaS42uEN0f/e
	hHhuBi2A6IoemfJ/UdMQDCrOL5bztCFM28GPLf0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff6c45c83-99c8378d-4af2-4067-8cd1-44ff819e1f0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 164f0399224d5e488b8f93f4add113f07969bd1768e64d99636b35d6da7b25a5
Date: Mon, 4 Apr 2022 22:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649112538
