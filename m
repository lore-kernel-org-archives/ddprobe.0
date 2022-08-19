Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627DC7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660878652;
	h=To:Subject:From:Message-Id:Date;
	bh=LgjdlRTfQ2Ec7LSIzx0UMO4OG1m9NGfb8oTMNl9UXZk=;
	b=BZQ1iH/UbhxNHUXgUMjvr/eUYM1uUYw0ljUaBcY+zHqu+4rViKcW5uWRATf+JSvF
	CmX9wxIPGFsxCmyaPQRR8vUA/jSbgrbEi+gIHPxu6wmkazBn1C5jdSYEfgjB/cZohJW
	c+m7Krn911NDCV88/V4GL0AVp8UcpKsM/YOsmChg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660878652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LgjdlRTfQ2Ec7LSIzx0UMO4OG1m9NGfb8oTMNl9UXZk=;
	b=eG+go4h0k8P2UIm/2b9rxhAnBuPDpWErcY8cqmbgojj4pzAgMSv/5vuE8dkLs4VI
	df/FIPq6hljXVY+i42HGKGz5+8cv03b4YUhAScUwiv8bkOosXqkCXXWDvKYArDVDxOy
	RegVueGy4nrqWLLvdwYmtJiDa6dY5hVleGvkUyRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b41504bc-ddeb94b0-f85a-49ca-9125-f222f0fefcbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3207eaa4e93dd71fcac3365d37e5d305af170cb882f7154dc236a62f2458b4ee
Date: Fri, 19 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660878652
