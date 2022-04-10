Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBEB51375
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 16:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649606578;
	h=To:Subject:From:Message-Id:Date;
	bh=StQBAs9okUKlT8S+gWhoOFRMcGbk0/bsCkuDsQeppSU=;
	b=iaJFdud0D1n3OX1CMZ0X7BN58CdU9INodQiIwWqTcJQpa9JW11Xq0mcncp2I8cnA
	nQK/OBgW6JF/y929JdGLFquWRWbGLemV8E+YTAIz2o0fpYLMuRViPStLqUhYdSVkjWH
	7Of8vlbUgqvxFTWsLrzoc5zqalWuNJCSEd9lyP50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649606578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=StQBAs9okUKlT8S+gWhoOFRMcGbk0/bsCkuDsQeppSU=;
	b=PfNrZhWn1LOVZASoxR6D3dczdSg48ovS1/4jOaqN24EkSiGIokfeARxV6t5LzLPU
	lCepC876CnmpG5Fz3QnYx0I0vcGJi9YsnyIGlTR8ToBHAoLV6AJTnX7PVz8VAwynr2t
	f/43bqqXOr8AYexQj7vH48at9qs2NT2EC4xpi8EI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801436d03b-4b5fb401-787e-41d7-9b3f-711644f9d0c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af2d9688abae393e6143f719c8ede96428ab9eb16446f254d5c4f3ed22b4cea5
Date: Sun, 10 Apr 2022 16:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649606578
