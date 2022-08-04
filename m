Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C4D7F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659606652;
	h=To:Subject:From:Message-Id:Date;
	bh=mFWrFY/dh5bfMzFaSu3gTGbYGQhNHmtT4LWRAJhv1m0=;
	b=i7+VsTI+Yw+SRdkCAlhBqD3iqKy9zmo2uKv4qdE9rapajQLc0YVN3KaXrI2tk4S0
	2whhHWuaMsw0WII7CUlptig17Xx60PMYgLWj4KNdGsjdzpUnOXE+vC89eNDt7RECTuJ
	my1pflz+Xsuxsew/hv4iLNL3A9Ky+cjn2yh9lguM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659606652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mFWrFY/dh5bfMzFaSu3gTGbYGQhNHmtT4LWRAJhv1m0=;
	b=XzrILhYkfkumcVYmSAYtCBQ7rpi3LeG73a3E3dvwbXvvtBrlGzHml9sS6RRm9OjU
	VLm68AMEV7KLslGrRLMieOuwxDX2HWT2iaHbp+H1eqX3XsAc76CmvQCB9gbBx0vq+cv
	8pq2BRSmnxNifVzP0nXZpPZUse7cbk6yUIExXBr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826843d694-55110862-1769-4b7a-9e83-12ca0a9962ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2405d8f52728b229b3beb70d056420abb78e7f43aebd92c8cd17c9c7048e4b20
Date: Thu, 4 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659606652
