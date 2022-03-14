Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8701DC62
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647220885;
	h=To:Subject:From:Message-Id:Date;
	bh=AjLzae4idItqEwhDv5b823UmZX0i+LF/A9/ar43LHgw=;
	b=a8SbaUjaQ03zcjufpCPKGHqigNhG6/4n5oEwXaeh6/r7bE7kQIgoGoGeO/d1WYRw
	4J9AZFG3IEXOQ3pbPJtFXSWkK1LwiPfxQ7FlJoPPT6qufveol7QneBP+G00/qawvXqi
	NNc6YsjyI6RyV5CmFqAOnz2Fc3G/195CRws39cPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647220885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AjLzae4idItqEwhDv5b823UmZX0i+LF/A9/ar43LHgw=;
	b=RQGTYsKJtLExpDBzRATbjI4C+RLQsfZ8eDI7AYbn6GvNZrHfs4XlO/1RNc0WMnig
	dCJzkDlUStBd+Sks0XxSgybXQFd9B6Obk9GTcb4IyQFNsh3uNFZoayFH6UZy3Tchy4D
	xIKb7MG9/m891l9Il/tAa6Q5TwZbrawghn2+sM3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8604053c-7ad23d46-125f-4c12-8e4d-a5d0d4d467ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0b78a7f46aef22b7ff9c7a312c5abbef8b980c91e182ceb50c6b457e65402f3
Date: Mon, 14 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647220884
