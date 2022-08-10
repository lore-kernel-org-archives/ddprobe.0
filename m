Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E456517D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660158053;
	h=To:Subject:From:Message-Id:Date;
	bh=+mnR79xNfWRJyi6AmNjJi7kfjGIxbxmpsEpvwBiev4o=;
	b=PyPUXCryDGEcnSNMKm4070Io2Ta/b69Z6g7t+gQQoU++6wNEHhpZvOcQfAuwEXrb
	RsPQV0Foe0FVF/YWnKimdD8rmrFnH6EULEvx+MM98ynWeOcz9/wEO5j5vqauBnqsORI
	jdT4aEf4V/FtRpMVjL1dgTLESB5EXKL2cd1sQJZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660158053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+mnR79xNfWRJyi6AmNjJi7kfjGIxbxmpsEpvwBiev4o=;
	b=F/0bET3XBZVDM0m+uPB8FUoqnXXXpq/2Ce7D5+U9YQ7NO0w3Kp7S/HrsHFOr9sam
	1R9asTiWVA2OhmRrNJ47KO9DJFvtZRUtzDkow7wZbNCt9GMTgWKvnMl45BrcrpIHgq8
	Oaued6Ns5V1klR9+ER0TN/HshpwP26pL6s2ri1xI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182892188e6-9561c9dc-8af0-4d91-950f-bb496f24a782-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca3677b4e7448174970fc59cd9d516da9f5e4a45ce6af6e854844bd79abd219d
Date: Wed, 10 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660158052
