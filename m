Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3024E1FB0
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 23:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652830499;
	h=To:Subject:From:Message-Id:Date;
	bh=wfX/mAn5W+Sf3RsfeW7ZXB6VL01/mQ6XXYsOvLnzHtY=;
	b=hdjxcyG41M1xi3zhX1bQglhknYGSfll0PEZzRJUZKqdmw5LoqM4I/YiGaZk7l5DG
	zFl5WyWI+BVrFMLTxUouwRUV3SuKYwsIup/1XN8o8sHPQUOOOVyVcWOaPoRvIJsxWcf
	x+PgLW9HoiRKko0ofXpkOu2lw9CZUJgwT0eXz5Lk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652830499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wfX/mAn5W+Sf3RsfeW7ZXB6VL01/mQ6XXYsOvLnzHtY=;
	b=JUCdC+JtDDAuNHpRHFqTbD28YcoPssJOgDSs7TuoI7taNUdUsOt/2VmBaTxT0acy
	eaDzrHLynOlbQZFKjjpEdnlgSh0qoc35E+N+HNhnnlI0joYG7RK2lYzuBApCZLstWCq
	mi7K/1+LDv8rX50fbiU9jamT8DIBqD0GGQZKmrCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d45ff1fd-0efb82fc-e5f8-40dd-97f3-0b8a836acf46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ae88fbd26055bd0d34f2fb7497612f95a371a800b6235a0bdcb273dbc092567
Date: Tue, 17 May 2022 23:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652830499
