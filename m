Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3552F369
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 07:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653290099;
	h=To:Subject:From:Message-Id:Date;
	bh=nfYYhOcH4NQjla6NVLgStugRKfc7GYgWR9wKYWGCQsI=;
	b=NCkZAyVCoazRUem4eU6OujgDi0TdEfNCG+ND6wHPubRYJaAdx6sb9AfXt7QKHawp
	EI1vPRd8mmgFaR9NX7NN3FHV7bqZgCX3voq7o7W42pqRpdP1D7OgchE+TZbiTdyMzkF
	qrnD+PoP6R5nD/btAAsTPPiu4D052VtY+HtIL0QI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653290099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nfYYhOcH4NQjla6NVLgStugRKfc7GYgWR9wKYWGCQsI=;
	b=EdRxkyugqKl3juogRgNPQG5yVncJLQU4NWCKnjnoyXqfLpGe5aSX4stI9QycxQth
	AOQ5CCFTK/jHhTVk8ajsV83mcWIJb3tUFy7IU99UWuYCNIQQE9ogO17M8yXZ0AhnT1U
	r0xRYlCjtMF5MXYYBtZEi9I70crPy5/Y88Jnsd9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180efc4e23e-09d64350-6512-4250-99bd-f9e03be92d39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a91acd51585192e51e728dcefdb71acfd698a876316ad2dd8cf69762f0955c5e
Date: Mon, 23 May 2022 07:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653290099
