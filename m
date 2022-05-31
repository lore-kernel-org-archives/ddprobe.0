Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378FB20E2
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 12:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654000619;
	h=To:Subject:From:Message-Id:Date;
	bh=puCq4xFRpA3TrwWY7bCb711+BDEVnirvjdoOaUf1hro=;
	b=iX6F1/l+WIcXa3y5FbGD5t+OOoJMPBNnqNUmf66ne2IHKaJw9gTQBuAbjb9JfolJ
	pXwNC9ppQ+aj/kByVNQ6+yswszrNYexHy9/ccvi4ggI2kqLf3vvuos8XoX5LTXN/WzM
	F/BmQSpcbii73mXxMNFYhDrSQoGVSxL2ubUpLbX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654000619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=puCq4xFRpA3TrwWY7bCb711+BDEVnirvjdoOaUf1hro=;
	b=ZpBKHLscHGMXBIqzXNVROj1xEhJAni5uUmRMzc+XkaY87DltRWdicSNIPxh1f/Ny
	4ax6rRlQrhKSo9eNf8ETOoE15PQgdtMw0iO/1qzb55wv/IRcnRi5EuFgyDe/IWsHI+4
	wPxMpt0XghpCWTuYdDKry0wvnyIz+w+0rHg3lLMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a1e8ed8-6c9ec9f9-ab1c-4c48-a924-9e76141f70f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc9b6ec9367fda14d8a5c1b82327415899b17c7dc67b7159c8ecf40e6ec67c4a
Date: Tue, 31 May 2022 12:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654000619
