Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2373E258E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 15:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653319199;
	h=To:Subject:From:Message-Id:Date;
	bh=1Df/rmwbcQpa32mkJYVzwelayUosuAGzGDRDRe/lQEc=;
	b=eP+jOtSaDQC8dRA+9CCDhmdwSVCu8cDlT0stQfHKW6BhqC+AlQZ7kExyusdBmGvt
	f87Ua59G5quTe4maQATLPli4ysqbfioUY/XQ9oWcyUwwzC3RMdZJCF+Q9KgtAvw7ktT
	p80qZ7Fbd5BxnaaRbmCBSKb2ZuO5MESu8hpUMsxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653319199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Df/rmwbcQpa32mkJYVzwelayUosuAGzGDRDRe/lQEc=;
	b=kMYKbmTD/MzYj9e3vGWsF62WzqbXheeVB45Kn4+EoqyCo66vLD1RTbuxwiWiwIIl
	DBSZLv0vWOWdUQv8PauXd25pbGeGJjVupjd6Tg+ZT2+P0jCfOu2yt16+Ea5lfsOc/lk
	qbhp95AVJxrxZfLVkvEbqSFGQdKIaSDLMgkK07gM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f180ea00-25e74c41-9587-404f-9f61-b0a6306ee5fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2e09deb9775b81af16b84dff8f4de0722e23e658b10a446410a8976a87427b0
Date: Mon, 23 May 2022 15:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653319199
