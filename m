Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D967320F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661197852;
	h=To:Subject:From:Message-Id:Date;
	bh=L9BbMPZVSRCOXb/zgXu/Nh9FEa2ZwCz6oAtfeAdJT9g=;
	b=B2gcQYMo/Y63j2nnsAEkiSxzqojmUwayJ/V5qEeYlLtr6pute8hxtoyaulWk4wwD
	6BtHmX4Atw3k8E7n8+TZM90Gv9J4BU3OXcBfBbKJT2HVzmO/iE0Yma/T/1+mechc69k
	HJphCAqR7iFSlr7wAZ7nsfOiZYvOz1wcBjYsfSzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661197852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L9BbMPZVSRCOXb/zgXu/Nh9FEa2ZwCz6oAtfeAdJT9g=;
	b=UQl7UYd2zvqBYRMT9MtM0bgW1npMeLkCKoN4757EK7gqSuwrSBmMaxKYrFZRbY5V
	mXqCgbsdPkYmTVpq0D6sbQ0ZnoGGCBoDXkU241ddHii2F3jQirD44ykEHgNUltiLVcO
	HNbL7O9xPL5KRn+8X4xqZfM22JB+BNs7yj2m1wTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c71b9fef-f793a60c-0217-4e29-8525-b4969fde345b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3270f46b8506958becec38fb920d9afca7d3c0c37e0753de6fc9ed382ee3fdb6
Date: Mon, 22 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661197852
