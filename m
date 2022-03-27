Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1063E2FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 22:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648419718;
	h=To:Subject:From:Message-Id:Date;
	bh=rFtQ+PikSUxyuaLig0ssHt6gu2s2ZReZWXEYqjip7Bs=;
	b=knbmCIQbsyLHXbw0u9K2AEPfgzvOVHVGY2WxL6MLfY3hGzFevSbVvoEAk+wxs4LK
	tKNFkcD1eIzu5uHyOPRhyFoQJUl1BEuvdJf/E35ONMeW7Ow3VUkLK4iZ5deyjraxxQZ
	fZo0fKxEXUKeprsVI/Ozx0O9VIRIavd4LrDZuZxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648419718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rFtQ+PikSUxyuaLig0ssHt6gu2s2ZReZWXEYqjip7Bs=;
	b=GApzcfcjHB35o8i04bFsu1/cLFG8M6XfBK32YeWXqwLKHhluzsdi/ImtmABLZpGp
	x/LDarJpv8s4/p1/POeLuoG6tyJU/AglgMBp+DkMKojoDGauY699aHa8edX+ciavBw/
	RDgZjmgtCRj5bCsbfBvVIH9j1Cb4gCZLiPg+XVKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd78c46a-03021489-9db5-4115-a259-494aa828b232-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b82ca383c86041f0dd435cd160aab71f4a7cbc0168fde6c661da583c1659542a
Date: Sun, 27 Mar 2022 22:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648419718
