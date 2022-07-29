Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79191360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659094853;
	h=To:Subject:From:Message-Id:Date;
	bh=rjioQb4u4tjIeMbIX65ssoSS5a8boYg35vRxwdPs8zo=;
	b=bwZhyAfzJKBBp4ieu+FFtFpfxuuXzizNKuJvWkBPeRb9UMPp/MBfw7ELenE3xoe/
	q1HcYcfgCx5b6rVsBXMMZWWvK+5SxdKPEOkNNFwKK9V8RjPg0Vv2D3+M32FotgxIwGP
	u1dGsVwjcZMLKZpOgbgAawwiDag/ZK6QV1H2Lguo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659094853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rjioQb4u4tjIeMbIX65ssoSS5a8boYg35vRxwdPs8zo=;
	b=SwmEVQsiZ1EXye8FwyJS8z2JK45EXlfAvwiOEKtLelasDNeyDyJV41ow9WNw18+k
	kKfV1QqukVrkqdXMLX5TZV+A6XZ5uT8RSoNrVe9iPip5sEJF6B0lhXVh7yGw+dqkBtS
	bEsFM3qjk2JIIKhEElgequQF6vbu39+/VJUmvnzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249c263b5-d650dc4c-3ac1-49e9-a96e-baf748074215-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1542875e899f13adebc1e0142feefc42366904acc0dcd29c589c03b9ce4127c
Date: Fri, 29 Jul 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659094852
