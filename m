Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F18198
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657765612;
	h=To:Subject:From:Message-Id:Date;
	bh=Kh6K7HCDCHBtZHvBZ9TQITu8+QgNK0q4BfK58wuWARM=;
	b=SqkHRRfiKZZMVo99Ckt0vzEQ4otzSMtr6cPZpjYJC6AwH+G7ATdGdwTHz6EfIKVP
	KtYPKlZg8ysk8kG4ZoEtzeISHXVojeH3dAuvRYM/zG9RuMgCWr5G3wczspR239VyPTK
	m0XLCPZtSCnsQhdXK+4Mi5Rv7xWqGOsAYFMvx6Ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657765612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kh6K7HCDCHBtZHvBZ9TQITu8+QgNK0q4BfK58wuWARM=;
	b=CV+AF70mLVWtyfUc11VIUDOaJGFVZrZ3z1oKssclrVTPGM4DdncsfUIAPcH7nbzV
	8DlCHEEcfByF+ETcic/IyqBa6UxnOqV27OXN0f2Avya2I08N3ORwYP4AXqDZBm3JO0q
	eiRwSa/GFEYUMeNEXMEH/6mFucMqA/GRAp/wifno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa87cb13-ceaeab34-564e-4001-be64-4bba9c8e91e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6c95309332724017cf53ebeff242bf44dfebed6bcd8bee0fbc45111375c54ac
Date: Thu, 14 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657765612
