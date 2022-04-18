Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314F4801
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650281158;
	h=To:Subject:From:Message-Id:Date;
	bh=6ztBfQDf0ZPdhtK8Nnpi9zHER1JgKvSezwAdlyP+v30=;
	b=RgaxYxx/IoHkhLBVwAz18HwlEWBXHfefGcMS0g3OC47f9vcXDrR0spf4NZ5bjeDX
	YJcqWixSsbM758xvd+C9z8ZkyeUxb8dIQFW1QTD8P9oHZgp60r+uBvy8gKzVAjLrJAI
	VUD0VFcYvPvECCNao/DX1gETGbpe53FBYN06B59g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650281158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ztBfQDf0ZPdhtK8Nnpi9zHER1JgKvSezwAdlyP+v30=;
	b=DPRdTG29lC7mHYsPlHRJtHR+aXIWoS8Yhgm2rRm94N483ytRjDLvQJYe7UFO4zji
	ulDmsPzQoomifjJ8swUyysL942U5kX2hTUDwFvRGppKLST2Hef9Nk85OKNfP8nk8nGG
	/snOckDJCJQksRjSAXr+uBIF22hhWJdZBr3j+LsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803c6c168b-88685df2-0725-438c-bdf9-a1ff61cae431-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 769022f7113977a48c3b8577a881bde3009c3c0846c280689510d4af52f8eae5
Date: Mon, 18 Apr 2022 11:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650281158
