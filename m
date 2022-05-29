Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0B817D4
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 12:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653826199;
	h=To:Subject:From:Message-Id:Date;
	bh=o6t7oOAxmtO5aN+53YDoTBZv11hxDBp9jRZpqKyHOOQ=;
	b=DvhQFNsZ7BFpGOpC7y6sbPU08Tl+tebRj6PiBy0L1tcwAPlLUKh7frsHXHWwX7vO
	20UtTc1sW+7m0B0snN8lwSomZs1/nPGpw9NJkJRHKA5AXXoAlZWdP4nBxiY5BAqnks6
	QNOrrC0n0WwUvq1jes895PHfUp5VqxXFARlFjOL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653826199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o6t7oOAxmtO5aN+53YDoTBZv11hxDBp9jRZpqKyHOOQ=;
	b=YxORi+ldP7sHWIihIpeaTTFpxiMSUJVY/aNSY+lrNnc32ZMVZGZmFqBaGqnuDDVO
	Q7tS1RnIOUcB5oDbh944U43XnMvf+zuH7mjbsHrCBsmJPqmrQN6WVHpR+dNAVCi6bZr
	njaqwzlHBJ2Jrwmg+oWsqbT6N9rz+KsPGK8yHaaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810fb91efd-3be8acb5-4277-4fe9-a25d-ebd4caeecf6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4db65ff4ca33bcb450dd3462930bc9e46555c2a027d8a201b7fee4ce83a34ae3
Date: Sun, 29 May 2022 12:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653826199
