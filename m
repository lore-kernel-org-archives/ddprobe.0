Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4626AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 21:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655413919;
	h=To:Subject:From:Message-Id:Date;
	bh=LqrKBgX8zW3XOpzawbNhiqRQ5PepWkz/dA2kYdC94gA=;
	b=aDM3QZ666DMzSQkVVkb04YdbTb/TdRlbxpVb5i5inodbY1NFgfpjHzgXGgFcrwhy
	9foslYkbnvcWynxhuBAoSxhCN06HHbbwx5W6c1OLIeb8eTdPAYL/D7OscIqsk1DWK0M
	ORtdthC/Z27nyXUovHgeX4PSjPRbwXEs27+eLvp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655413919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqrKBgX8zW3XOpzawbNhiqRQ5PepWkz/dA2kYdC94gA=;
	b=N3bKbq/q2JM+uBZ45zv9jVP6GzxNrmkCIDPN6Xuu4ImfPpr8ahk/xaaoNS//xHow
	inEWwJXTIqqqGjMuLGQuGL/3L7R8TS67+2GvJGAovM5Sh3TpscnVQiqajpIkFGF8zaO
	0fhosh3jNEOgEruiHBlO1jVmnH0toRLnOMnoQOCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816e5bce55-a55017be-4f34-4d60-acda-21aaf4bab420-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 246dfcd90f130fd2f96004de1edd241d6ca99c7fcb0257759daff134c80edef7
Date: Thu, 16 Jun 2022 21:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655413919
