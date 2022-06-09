Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291337A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 10:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654771919;
	h=To:Subject:From:Message-Id:Date;
	bh=tWb6uZSTccX+CgfY657BLQZbuvWwcb6P9rOp/honroM=;
	b=d2HN7Iv5NOHEsKYvVgbiJrdTRMMO3IiueAv8ixfWbfu5Q96aK4jEdnqtgzpQAcwv
	7T0wQCgyn8emTUg1T2EhxHNLePwvlzXD6D6wrRAggwG3NkPEgpxb3zYSs39y1suI6/6
	HcFxAjcCUMS9PlQ/pFGEPTsAKy4B8kKM3GglGTR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654771919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tWb6uZSTccX+CgfY657BLQZbuvWwcb6P9rOp/honroM=;
	b=YxZ4ypiIOfOM95tJJ6YmmWq9H7+D46ao+dhICawXD4sHrHOZqnIzMoN87qVnb2Up
	jP/6UophtmLhVAEKRlN5s1jgg8Pf9Mk9+VAy0IKFpA9LfhTMaI2pOhx8erlnFHBZ+7u
	UfiFoJI0KVnAjSk0nvS5VnYkf90qNg1sMqK4dZq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814817a9a1-915d27e4-95eb-4b22-a172-01b344e67c9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20ce8ac20104b3e52e572c070fcf7fe62430f9d2e17b5a8c5a5ef2341b742ef2
Date: Thu, 9 Jun 2022 10:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654771919
