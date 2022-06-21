Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4821C0C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 23:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655855519;
	h=To:Subject:From:Message-Id:Date;
	bh=RuFGUT0UswW8AxooKdlo5kuh35UA6BvYZfUBDlsFnNQ=;
	b=PPik5fKm/tInPxxTo3GgagQMmZGX10LxzQkuVyWcc0a/lauERsWnXf9qnrLsryP2
	wOpN2rdQkrB8zkHJt5AKztgNOaN/6FhT4eElI8h4xVx1BmKZSijgjj9YCgKaivFjlMG
	VyjxbMtMKc84R9xRCIRu/pTILpF3rPB+gw44JXfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655855519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RuFGUT0UswW8AxooKdlo5kuh35UA6BvYZfUBDlsFnNQ=;
	b=gdzD+JcFyrWCCmI7QgPcNhsCptlWMaqlheI1y6ZKBQD/YVX+Qv3VTNWtI98saL71
	OS9VVNySPRBj2wdr6qJ3rvT2QvDqEgilG0azmJUikZpVrNUgFgV//oGEl1lxe99fo23
	45ghIvzpxkDMVh0e54msWwXyZf/lY6GNVqO1mRdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018188ae1613-0304a669-d0fc-41f8-8c1e-cacf710445f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3138d18946bad48c35fded78d4de6e7d9198d4a172e2e4d61ff3f94a5a43c8af
Date: Tue, 21 Jun 2022 23:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655855519
