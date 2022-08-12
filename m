Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B85F1371
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660309852;
	h=To:Subject:From:Message-Id:Date;
	bh=EhDQnu5Tr54/bLQs9lhiiy33cWkaK25S8NPV355c5tM=;
	b=Q0FjpfFW5buwA8ruLrNijyUQ22lfhjZ+vXdQuVomQlBq3YRO0shAveiTP81Ji91Q
	q1YdTPHymcST1lSDgRXXwLLnchswX6QC6KQpRw5DCB6udwnjlR/es6vt35qiwL4Mc9/
	mpkGymRHFwuJ4b2qDW5WzJhuuSpxOc+CYYrJIXAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660309852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EhDQnu5Tr54/bLQs9lhiiy33cWkaK25S8NPV355c5tM=;
	b=dRkp40hnaFQ7smzzkJMNFJDo+uCnGEnjF0xknNBZq0df6RaHuWSynOFz5RC87QbH
	DMseBV4MaTpIhCiKn/tRwUqWIQ3OzlQn4Pc4bw3wM72N4FmCAjuLYrE5LeddV7cI94I
	Cigeqd9rBIwHxYmg3qGOjN3HuKWDUm/8O69+ZtxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182922dd17a-5b8fdcc7-ad0a-48c4-9822-6e18f9f920eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c55216154f2fb7da2dc1501b857afcd80137a7b709184b3c4fcbec9350882b36
Date: Fri, 12 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660309852
