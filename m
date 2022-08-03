Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C78A46BA
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659561052;
	h=To:Subject:From:Message-Id:Date;
	bh=q25lOYSZdf/uWRQmpN6tB+MsSVl7241nZf1Rb1rX3dA=;
	b=VrqJj4jUfp1JLiP5ZJiBCJslqiXLVUuSqHbKckWWbEY6JZ4rtzLJPCE6nzkzGqxB
	g+u6RCJ4o7mHwBOdQhJy18YVL7/NgiOtRLTuX0Fnj8SagWoVKVQgAr/lyMhjiLJILq+
	tdFV2vakp8OVWFBceCjpKiZzVlCCnbuXU8LtKj5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659561052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q25lOYSZdf/uWRQmpN6tB+MsSVl7241nZf1Rb1rX3dA=;
	b=fRNjuglgt2piQEOGX/LFtp1zYSXi73jvuP4xvZw6OLR9GiXT+x8eD/kMitntd4DH
	ghkbglR/3t8oyJ65rOmDngs/m/Ys6C8f7tAuNJOKL487/Xa3h0WIsF7Wx8bRlegbZeQ
	g9Yhdh5A/29PNw3dtuGQNXxJ31fuBerXAJ++D0T4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182658c09c1-16d6ea43-d2f8-4578-85e9-cde3cdb9fe14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75992a7f0fb7915378c23c9632b4966c49f09c7808a0faca255b27b23f9811d7
Date: Wed, 3 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659561052
