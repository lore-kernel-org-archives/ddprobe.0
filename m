Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7A97A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657697812;
	h=To:Subject:From:Message-Id:Date;
	bh=SB1vgx/+nkZoa7XjOOD9a1ni8M9BYBb7xlFzLyO4fYY=;
	b=Q/XImKEVswPicJp/ZhZ1XiFyls6oI/hABa+4DHLFVunzjs5ukmmNfSCrmekUwauV
	zyuEigntCHuvNER41g5Tim8HL/TvtX2VARxadSb7pJcNw3Lfsqh0DwtuBRvp/jeC4Sr
	OAZd6PObOYQjiPCmOAdDU5JFkuUrRCNyqjp/DyKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657697812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SB1vgx/+nkZoa7XjOOD9a1ni8M9BYBb7xlFzLyO4fYY=;
	b=fkr2oq/1UQxnafog65zqwtWu8nO+n3bbHZZXE+ZUIIOrJOxGIsPKINBqjW49ymKj
	C/bUanEVr4eh/wzonkHqesU1HqQc4M4baYhs7plZInk1y1a/S7aTcmV3y9z1JbIfxmp
	u17hGQtw62HCh3+8MNXd8VcHjobl4E/6NitN84/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f67d3f5e-3f68f7d2-4c2f-42b3-a2a3-f21624b26126-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cad9d9cba4180818bb79d5cb19c623658ce5fa26e40d80b30c8f4ae946c79830
Date: Wed, 13 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657697812
