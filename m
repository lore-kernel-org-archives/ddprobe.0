Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEE87A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656245212;
	h=To:Subject:From:Message-Id:Date;
	bh=FH91AQ7h6Y53SIBffJT+EAGYGFBWTpyF7SKBxuE1qO4=;
	b=QtVNZa41h0RapuLnGl/VwxVTTjLkHgl5E1IppY99G/ettQCMZlqJrVeNno0aiKqK
	Ru6QHtHIioLwoK7imc8S+kbJHaULZBaJtech9FGwFa4o3UeBzDDuSW6ixc+cTg+vbyJ
	lT4jdJgStQ9c4vgrM3q1/veq3L6RtLvXV6wCy2dU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656245212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FH91AQ7h6Y53SIBffJT+EAGYGFBWTpyF7SKBxuE1qO4=;
	b=RJERgTLgNTkp+bqROxr8WhWIf7vmZZY607EK4ME61H8K0MaF1RZ5Nwto+H3wpKyE
	L2kaJaNP2It+zfQ0+VlGqR3Q0shKq38czTDWZyAAqFZGCA+8L4dVq7WWCI+4kxuX8im
	VMHsbqqLapwJeDjalks8XGkkau3pRsl+Zz8OuUnE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819fe8548d-7fa90e19-7467-4452-a26c-31bacf80493d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5d77ad4304f3b81cfc09cf95019dd936b2fe08af94560e70755b72e3407b029
Date: Sun, 26 Jun 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656245212
