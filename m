Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939317E8
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 06:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651820218;
	h=To:Subject:From:Message-Id:Date;
	bh=LBeYjQ+8vOMZyiZ+fXL+wbS9yDt4UBywxsG40h6st3M=;
	b=BeLrGrvAdmEZBqAWxRUjwY8/F9ITvsdCqMj1DqYHy1yrKPgKJHJZDL8e7W0q022N
	KvLTvdHw0LYLKe8jT7WMQtrm5nnJ7HbedeInc59bQoym/90soDO5CJOOcuc40A2ukL9
	qXtP1E4JX3hjsX6uI1VlPl9dvPTFnm1s5ReGenpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651820218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LBeYjQ+8vOMZyiZ+fXL+wbS9yDt4UBywxsG40h6st3M=;
	b=XvnV98Qst5S+EeL1R62bIpQMZrwTaQ32EOcScW39QMXj8PjMqNZm+djXlEg1AEJk
	HyyUN86KkZ7TpetjtM3jQETLOS0j6k3J+YoMXOOXnaGJcaW2XizROUDaIWh0cXOHZyC
	s0u3mtcNgXJ/RrktWYbhv3s+z427X8OWhL2w2o7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180982847c2-2a828d77-521d-4ebc-9537-e6771aee97db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf5bb5e93c13e2dc471e59da5f994ef9fbbc14efe16cc122a820b7b06f79c2ab
Date: Fri, 6 May 2022 06:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651820218
