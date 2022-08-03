Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E03C20E4
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659546652;
	h=To:Subject:From:Message-Id:Date;
	bh=Cy9dTCwkWAXVo+ATFNF8lGxnXwPKbVdxWnaX1eWOMqA=;
	b=ECDYTB0paWYykQ7uFG7RBs3RGYo8GV+iry9n0EHYk4hzQDnT3jrThs6L0m3pcS6a
	fht1V5HYZGLJK96mjFaAueNhrHUsdhGcXeV/VLYUgxAe+59OA14L586Y4UMiY3m9XUh
	kiegfs4FZkr1Ll4xq6y859ntLP4cl5MfxNibKei0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659546652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cy9dTCwkWAXVo+ATFNF8lGxnXwPKbVdxWnaX1eWOMqA=;
	b=dgc7RP6kbyc+PQCu/H4/C01dL+tVXNwTJ/5BLRfs4l1nj6zsgrraUawD+qIiLMjP
	TF6jLy7D78ItW3Wq8Jh1LkPN9g6BpKtzMZL8M4RY3YGZF3RhvrWgnH+GW/yjD7sxpQ4
	8EN+DEEWBobqOSbjgMvqV2S3KZYy2fiXH0MK/i4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264b04f7e-29691cc3-284e-4793-8fb6-6ed59aa56c8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50e3be66e2321ce74bb88a0e1dc70deddafb80857f5a0df6cac8f48b6bfffe54
Date: Wed, 3 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659546652
