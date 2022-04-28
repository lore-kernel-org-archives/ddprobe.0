Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96F67B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 12:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651148578;
	h=To:Subject:From:Message-Id:Date;
	bh=LGWFN3VKq7pHuHiSBQ+uJXDuief0pXWTL+bxTGjQ0zM=;
	b=D1Fbl1InHha/KXUJ20ZkizDfkNJ8kIxXYmeXUD8lQgOa1FFkCKskogJUgrONZsQT
	fabtRpmeBZeLRxbySaShI4H461q2eSD8Px88wpcB5oNjGi8i6yuxnW7f4a7FDyEYJc1
	8WUC7BPfsLPoBUfDVfrbI1ytm6J6zssIL+HlyxEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651148578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LGWFN3VKq7pHuHiSBQ+uJXDuief0pXWTL+bxTGjQ0zM=;
	b=RHzvXdg31SLxGWRjYY0yyBMqCpH4j24nHvb4bTt++61uDCVu6g74g44B+1P14+B+
	CXnv30v1PDGUXHUIns2g2rW+/7MLHMyET8ebdZIfeKpqAYbc/BkMHqovJn2iknQqrZU
	LRkSKo5D8ZbWdHsSK29XSeFopev1m9zagAWn1FDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180701fdd9e-7935656f-a5c3-4d1c-a71f-68a0c6c85236-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abd04862ba33d6c77cb989c4912d4dff96e79204aa97753126d285ad6e1b62be
Date: Thu, 28 Apr 2022 12:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651148578
