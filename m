Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736347C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659757852;
	h=To:Subject:From:Message-Id:Date;
	bh=LmUHuTyAgIcLh8M0ULU9iS2M01RAvW20Q7aJhKDRkww=;
	b=LTbzZdDk2eTQbFDosMHHkj9NKd2GjZ5vHHRPUY4DBDNYStygc8fVNKYStTYt2EuT
	fc0I1Hx0WOASg7+MNTpXKNNsS2NiXwNrYb5Hf0VbpRu0S4ZHWNYFvp+069ZYzjbhEDA
	Xk1SjT54PAjPOT6bphC54RowTo+O1fgpRyBEZCWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659757852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LmUHuTyAgIcLh8M0ULU9iS2M01RAvW20Q7aJhKDRkww=;
	b=kYqYUGRBC5Py0f3enEDU8kjqFt+fxvytNJqNWESbvA6vrQp1qWoBGpESDF89witj
	XeHCGJyeyLYQq5hwmsRVYrRabaZ87xI51a5+SDeKosUD7lKnKUBxYOUC/4S4b9NvdNu
	Ksjk2LJqBdCnmOslIf82Gi1ktO1KYSv/20wyn7Tc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827146f820-61b10d63-d8ce-4386-a49a-f45726f0526b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10052b6eadebfb4425842e893a235be96dc5f7f665aa471612b59e145858abf0
Date: Sat, 6 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659757852
