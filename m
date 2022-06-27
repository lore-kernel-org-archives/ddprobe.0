Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10FB3229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656340012;
	h=To:Subject:From:Message-Id:Date;
	bh=Y4VyCtux/fBs1TT4ykkzt6KC1lQ5lpuua5H4G5Ytej4=;
	b=YcQaZGXmjQf1d8iOCPcYrvFWc8g5HjxCOLhVhv6vBWlrdUONk4G8qFGt7HMYQYzM
	LOon0j6R/N01E52mNd1zM+jSHRiYec65eGJiuLiD2sP36u7rI6Gk5IvWpEqyrTd8hjR
	qyRAC1n0ieNxqqzQF3woROcdop/NBl+zDsZ337vk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656340012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y4VyCtux/fBs1TT4ykkzt6KC1lQ5lpuua5H4G5Ytej4=;
	b=IbOM/Zr5CeRl6ye6U6z1YmdQwPJ4UTRLNh1Uxd43dSn0GrMpsZdqslXBK7e4Z6jx
	+E9oLNp8GBa/e7E8fZsQQEhDiwvpfjbyv1aY6LSE6k9FJuYaSKVp4k7jkGqSHQGbOSk
	hq6lTR1USavhHY/XDVn1Aqpvz5brP+WW0OfoLLMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a58edcea-a19b8b6e-140e-4cbc-a377-b6c0bd724a67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 007d50d969264dca9861e13b1fb92444ae62bf05f1a8a153c9267e694b2d9c26
Date: Mon, 27 Jun 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656340012
