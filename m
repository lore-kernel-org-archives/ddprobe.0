Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E73B57EE
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656715612;
	h=To:Subject:From:Message-Id:Date;
	bh=pP/rsczo1927gi8MRf3AS4MyPPYPYAODKnsavqL/nw8=;
	b=hDVZRBAKHtmbKI8qlHLR61CIUbCvjFflBc7f5lT1barM99SS9elzczyKNIvuNSKv
	4QHRmLcjfklBSXCvBs093Mb0dHHeZS++yemaSyZVlNFa4xrppitYXtYK4YUFSxqDgzN
	aEerDh1K+uGXX0GZDH+HDNd5NHz+0GEJ5gc7Haaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656715612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pP/rsczo1927gi8MRf3AS4MyPPYPYAODKnsavqL/nw8=;
	b=BePZ3ua+ADlRVry/Y21bYpVwaLbQkjNWbJRZkDoQZcuTHLztHtqkkZ06G5cYWT0B
	zB+26Dr6sVrRw5+xQLpOB4BLQCbS3TyChXmW6pd3TJO948mnM3l94+AbwDOEPtSCVUa
	Lk0ljiNs9GuWD7qIaVh+QR9+GIW/0vB61Ug7opSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbf210b0-15e37211-9d22-4975-9ad9-53899b195e70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efe0192ecb5de270fb8be12e1aa4c1b8603370e35bcb043079b4accf3ea47066
Date: Fri, 1 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656715612
