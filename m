Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF07C7E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646822485;
	h=To:Subject:From:Message-Id:Date;
	bh=JbeW2RuHXx6otioTr5xnOK+zI6wfN8m2dGNBfoNbx3s=;
	b=lrtihIyLQgArKRj2dcwYpXxFCroKNAr8EPL6g2VG/t8JvKlAMagHOTTwNwiBEqn4
	ssc4w5U9/dsf+pTR1ocJN6b2Qs/im2arNzdY1ahVVi3PKn2q/558jMyOgYk1cadYXR+
	jgjTlnArdiLZNGZPkSkmpiI7IJvboq8vY6jTuwFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646822485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JbeW2RuHXx6otioTr5xnOK+zI6wfN8m2dGNBfoNbx3s=;
	b=TLeX3GFsPtvHFblcK5tsKDjLXL5t7USr2ZQl82KH6wqrIkbby0zcZ/EKSyboKUlR
	AtaSZprhl0HBd7I0sNuQ0Xbz6xbTsXF/MTRQ5rZTlyZtw9BG1HbNZnxbOStymQD4tLm
	GdUVkkMsYxQzYD0cUepFMLi39Xe8HvtNv+gN3+sI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e44ec12-a88b5b1f-2150-4771-94f4-4c73c6111c4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6450e4e7b5d27af9fd8b40c5c164bc8a757a3b2df4a048d31423b05de3a84552
Date: Wed, 9 Mar 2022 10:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646822484
