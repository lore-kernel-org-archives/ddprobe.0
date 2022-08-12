Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAD6365
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660284652;
	h=To:Subject:From:Message-Id:Date;
	bh=E6wY6CZBF9tOchPucETF9EFHsue+Kdj7A9Ij27aChYo=;
	b=kChVLlesjrGoBej748gLJMbgfe6NMozgAsfCsg/3oMvg7s/FCFkorFyVh3NdPiKV
	bYTKbabR4tbRTau7ToSEgHTeW4UMHvnLXyf9S+ytV3rpLkzhimBLljgrIvwIdq+mcrJ
	nRCu1aUmelQ/Kjzkf0mqf8uRBgceKxvqKY0ZnY/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660284652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E6wY6CZBF9tOchPucETF9EFHsue+Kdj7A9Ij27aChYo=;
	b=UVK1S7VQyxLwrrI8II8gX6zAwU8Dn/BC1fPEdXo+P11TUjv2ph2swr77E02x9yGV
	kQlCWHvVgy6O/myEHuksXzz50ux+70ESZhDbYPgddN5YHU9kfUtgBDrC8PIglOrRCTM
	8hyVX1TXig/2SxzyE4Gurb+MneqReAWUEncBWR9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018290ad4bff-12afa754-a5f0-4436-b15c-de0338f62bb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36cd940320822777ce7c0a8e4a7b89e163309185002e743325f8b1ca70b685a5
Date: Fri, 12 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660284652
