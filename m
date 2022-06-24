Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039E523CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656067612;
	h=To:Subject:From:Message-Id:Date;
	bh=aJCPYEMCz3cbTYVA0WhsWj/A1rgkjtCePCNGsMETw/U=;
	b=lgQ3+ppzn+ffeSEK9xwvJFMzbI3K2/SKlvQOZHW/nzpbr/ebFs6OGb1tanGL4+Uq
	CrMFuYmRaXcDENUJ839xexTsil20ZrG63lF3pq9jewEdbtCsIq5Z2f4nIQdCNSddrUu
	2yrIYGUS+jbN5+53cx+BLPAI1Y/Puqk98PniM0mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656067612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aJCPYEMCz3cbTYVA0WhsWj/A1rgkjtCePCNGsMETw/U=;
	b=gvjeKS4Pwpx1FjaqnzXT1qEDkVKGZQFFHau3WRhWAUAW5jlvNa6BO+oUKCOYcljR
	9/k9TUbsVTkeB9soZ4LhMThJtZDTgdAOX4TyNZAF7PuKOb2TGhdGrWJHP78tzdaACch
	hyW7ZvGoNVowsKIurBOk29uYFpk5DS1DMaGt9L7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195525e55-a8a0e33b-8998-4ce7-ad64-2d6bc4743908-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5b705cb4fdaa7fc980570dcdf484fe0db1609a6cc53267be243f021cbdccb14
Date: Fri, 24 Jun 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656067612
